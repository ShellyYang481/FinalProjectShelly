package tw.com.finalproject.Employee.Sales;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.google.gson.Gson;

import tw.com.finalproject.Employee.Object.ClientInner;
import tw.com.finalproject.Employee.Object.ClientInnerActivity;
import tw.com.finalproject.Employee.Object.ClientInnerActivityService;
import tw.com.finalproject.Employee.Object.ClientInnerService;
import tw.com.finalproject.Employee.Object.Employee;
import tw.com.finalproject.Employee.Object.EmployeeService;

@Controller
public class SalesAPIController {

	@Autowired
	private ClientInnerService clientInnerService;

	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private ClientInnerActivityService activityService;

	@PostMapping(path = "/api/v1/queryClient", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public List<Map<String, String>> queryStringFindClient(@RequestParam("q") String queryString) {
		List<ClientInner> allClentResult = clientInnerService.getQueryName(queryString);
		List<Map<String, String>> resultList = new ArrayList<Map<String, String>>();
		for (ClientInner curClient : allClentResult) {
			Map<String, String> resultMap = new HashMap<String, String>();
			resultMap.put("name", curClient.getFullName());
			resultMap.put("uuid", curClient.getId());
			resultList.add(resultMap);
		}
		return resultList;
	}

	// Get Client List with Employee ID
	@GetMapping(path = "/inner/api/v1/QueryClient", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public Map<String, ArrayList<ArrayList<String>>> queryClientWithStage(@RequestParam("stage") String stage,
			HttpServletRequest request) {

		HashMap<String, ArrayList<ArrayList<String>>> dataMap = new HashMap<>();
		Cookie empIDCookie = WebUtils.getCookie(request, "empUUID");
		String empUUID = empIDCookie.getValue();

		System.out.println(empUUID);
		Employee curEmployee = new Employee();
		curEmployee.setId(empUUID);
		List<ClientInner> clientForEmp = clientInnerService.getClientForEmp(curEmployee);
		ArrayList<ArrayList<String>> datasetLists = new ArrayList<>();
		for (ClientInner curClientInner : clientForEmp) {
			if (!stage.equalsIgnoreCase("all") && !curClientInner.getSaleStage().equalsIgnoreCase(stage)) {
				continue;
			}
			ArrayList<String> clientData = new ArrayList<>();
			clientData.add(curClientInner.getSaleStage());
			clientData.add(curClientInner.getFullName());
			clientData.add(curClientInner.getClientEmail());
			clientData.add(curClientInner.getPhone());
			clientData.add(curClientInner.getCity() + curClientInner.getTown());
			clientData.add("2021-08-01");
			clientData.add(curClientInner.getId());
			datasetLists.add(clientData);
		}

		dataMap.put("data", datasetLists);

		return dataMap;
	}

	// Fetch Employee account Info by Employee ID
	@PostMapping(path = "/api/v1/getEmployeeInfo", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public Employee getEmployeeInfoByEmpID(@RequestParam("uuid") String queryString) {
		Employee curEmp = employeeService.getEmployeeInfoByID(queryString);
		return curEmp;
	}

	@PostMapping(path = "/api/v1/saveClientActivity", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String saveActivityProcessAction(@RequestBody Map<String, String> requestBody) {
		String empID = requestBody.get("eid");
		String clientID = requestBody.get("cid");
		String title = requestBody.get("title");
		String type = requestBody.get("type");
		String comment = requestBody.get("comment");
		ClientInnerActivity activity = new ClientInnerActivity();

		activity.setEmployee(employeeService.getEmployeeInfoByID(empID));
		activity.setClientInner(clientInnerService.getUniqueClientInner(clientID));
		activity.setTitle(title);
		activity.setActType(type);
		activity.setComment(comment);

		ClientInnerActivity result = activityService.insertActivity(activity);

		if (result != null) {
			return new Gson().toJson("OK");
		} else {
			return new Gson().toJson("Fail");
		}
	}

	@GetMapping(path = "/api/v1/sales/queryActivity", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<ClientInnerActivity> queryActivitiesFromClient(@RequestParam("cid") String clientID) {
		ClientInner curClient = clientInnerService.getUniqueClientInner(clientID);
		List<ClientInnerActivity> result = activityService.queryActivityFromClient(curClient);
		return result;
	}

	@GetMapping(path = "/api/v1/sales/getClientInfo", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ClientInner getClientInfo(@RequestParam("cid") String clientID) {
		ClientInner result = clientInnerService.getUniqueClientInner(clientID);
		return result;
	}

	@PostMapping(path = "/api/v1/sales/updateClientStage", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String updateClientInnerStageAction(@RequestParam("cid") String clientID,
			@RequestParam("newStage") String stage) {
		ClientInner newClientInner = new ClientInner();
		newClientInner.setId(clientID);
		newClientInner.setSaleStage(stage);
		String result = clientInnerService.updateClientInnerStage(newClientInner);
		if (result.equals("ok")) {
			return new Gson().toJson(newClientInner.getSaleStage());
		} else {
			return new Gson().toJson("fail");
		}
	}

	@PostMapping(path = "/api/v1/sales/updateClientInfo", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String updateClientInnerInfoAction(@RequestBody Map<String, String> formData,
			@RequestParam("cid") String clientID) {
		ClientInner newClientInner = new ClientInner();
		System.out.println(formData.get("name"));
		newClientInner.setId(clientID);
		newClientInner.setFullName(formData.get("name"));
		newClientInner.setPhone(formData.get("phone"));
		newClientInner.setClientEmail(formData.get("email"));
		newClientInner.setFullAddress(formData.get("address"));
		newClientInner.setCity(formData.get("city"));
		newClientInner.setTown(formData.get("town"));
		newClientInner.setInchargeEmployee(employeeService.getEmployeeInfoByID(formData.get("inchargeEmployeeID")));
		String result = clientInnerService.updateClientInnerInfo(newClientInner);
		if (result.equalsIgnoreCase("ok")) {
			return new Gson().toJson("ok");
		} else {
			return new Gson().toJson("fail");
		}
	}
}
