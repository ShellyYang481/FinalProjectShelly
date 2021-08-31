package tw.com.finalproject.Account;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

import tw.com.finalproject.Account.Object.Client;
import tw.com.finalproject.Account.Object.ClientService;
import tw.com.finalproject.Util.Util;

@RestController
public class AccountAPIController {

	@Autowired
	private ClientService clientService;

	@PostMapping(path = "/api/v1/isEmailExits", produces = "application/json; charset=UTF-8")
	public String isEmailExists(HttpServletRequest request, HttpServletResponse response,
			@RequestBody Map<String, Object> payload) throws IOException {
		request.setCharacterEncoding("utf-8");
		String clientEmail = (String) payload.get("clientEmail");
		System.out.println(clientEmail);
		boolean result = clientService.isEmailExits(clientEmail);
		if (result) {
			String clientJSONString = new Gson().toJson("Y");
			return clientJSONString;
		} else {
			String clientJSONString = new Gson().toJson("N");
			return clientJSONString;
		}
	}

	@PostMapping(path = "/api/v1/changePassword", produces = "application/json; charset=UTF-8")
	public String changePasswordAPI(HttpServletResponse response, @RequestBody Map<String, String> payload, HttpServletRequest request) throws IOException {

		String uuidString = payload.get("clientUUID");

		if (uuidString == null) {
			HttpSession session = request.getSession();
			uuidString = clientService.getClientIDByEmail((String) session.getAttribute("clientEmail"));
		}

		String passwd = payload.get("clientPasswd");
		Client curClient = new Client();
		curClient.setId(uuidString);
		curClient.setPasswd(Util.passwordEncoding(passwd));

		boolean resultStatus = clientService.modifyClientPassword(curClient);

		if (resultStatus) {
			String clientJSONString = new Gson().toJson("Success");
			return clientJSONString;
		} else {
			String clientJSONString = new Gson().toJson("Fail");
			return clientJSONString;
		}
	}

	@PostMapping(path = "/api/v1/tryToChangeClientProfile", produces = "application/json; charset=UTF-8")
	public String tryToChangeClientProfile(HttpServletRequest request, HttpServletResponse response) {
		String userID = request.getParameter("userID");
		String passwd = request.getParameter("passwd");
		Client accountInfo = clientService.getAccountInfo(userID);
		String clientPasswd = clientService.getClientPasswd(accountInfo.getClientEmail());
		if (passwd != null && Util.passwordCheck(passwd, clientPasswd)) {
			String clientJSONString = new Gson().toJson(accountInfo);
			return clientJSONString;
		} else {
			String clientJSONString = new Gson().toJson("Fail");
			return clientJSONString;
		}
	}

	@PostMapping(path = "/api/v1/changeProfileRequest", produces = "application/json; charset=UTF-8")
	public String changeProfileRequest(HttpServletResponse response, @RequestBody Map<String, String> payload) throws IOException {

		String uuidString = payload.get("clientUUID");
		String fullName = payload.get("clientFullname");
		String email = payload.get("clientemail");
		String phone = payload.get("clientPhone");
		String city = payload.get("clientCity");
		String town = payload.get("clientTown");
		String fullAddress = payload.get("clientFullAddress");
		String addressParameter = city + town + fullAddress;
		String zipCode = "";
		try {
			zipCode = Util.findPostCode(addressParameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Client curClient = new Client(uuidString, fullName, email, clientService.getClientPasswd(email), phone, city,
				zipCode, town, fullAddress, clientService.getAccountInfo(uuidString).getSaleStage());

		boolean resultStatus = clientService.modifyClientProfile(curClient);
		if (resultStatus) {
			String clientJSONString = new Gson().toJson("Success");
			return clientJSONString;
		} else {
			String clientJSONString = new Gson().toJson("Fail");
			return clientJSONString;
		}
	}

	@PostMapping(path = "/api/v1/getAccountInfo", produces = "application/json; charset=UTF-8")
	public Client getAccountInfo(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("UUID") String clientUUID) {
		Client curClient = clientService.getAccountInfo(clientUUID);
		if (curClient != null) {
			return curClient;
		}
		return null;
	}
}
