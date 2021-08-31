package tw.com.finalproject.Employee.Sales;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.WebUtils;

import tw.com.finalproject.Employee.Object.ClientInner;
import tw.com.finalproject.Employee.Object.ClientInnerService;
import tw.com.finalproject.Employee.Object.Employee;
import tw.com.finalproject.Employee.Object.EmployeeService;

@Controller
public class SalesController {

	@Autowired
	private ClientInnerService clientInnerService;

	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/inner/sales/ClientInfo")
	public String clientInnerViewPageController(@RequestParam("cli") String clientID, HttpServletRequest request,
			HttpServletResponse response) {
		ClientInner curClientInner = clientInnerService.getUniqueClientInner(clientID);
		if (curClientInner == null) {
			return "redirect:inner/sales";
		}

		Cookie idCookie = new Cookie("cliID", curClientInner.getId());
		response.addCookie(idCookie);
		String empUUID = WebUtils.getCookie(request, "empUUID").getValue();
		Employee emp = employeeService.getEmployeeInfoByID(empUUID);
		request.setAttribute("empName", emp.getFullName());

		return "inner/ClientProfilePage";
	}

	@GetMapping(path = "/inner/sales/Clients/{stage}")
	public String salesStageClientPageViewController(HttpServletRequest request, HttpServletResponse response,
			@PathVariable String stage) {
		request.setAttribute("stage", stage);
		String empUUID = WebUtils.getCookie(request, "empUUID").getValue();
		Employee emp = employeeService.getEmployeeInfoByID(empUUID);
		request.setAttribute("empName", emp.getFullName());
		
		return "inner/SalesAllClientTemplate";
	}
}
