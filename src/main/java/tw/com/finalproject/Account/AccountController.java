package tw.com.finalproject.Account;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import tw.com.finalproject.Account.Object.Client;
import tw.com.finalproject.Account.Object.ClientService;
import tw.com.finalproject.Mail.MailService;
import tw.com.finalproject.Util.Util;

@Controller
public class AccountController {

	@Autowired
	private ClientService clientService;

	@Autowired
	private MailService mailService;

	@GetMapping("/account")
	public String accountViewController(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		String isLogin = Util.getCookieValueByName(request, "isLogin");
		if (isLogin == null) {
			return "redirect:login";
		}
		if (isLogin.equalsIgnoreCase("n")) {
			return "redirect:login";
		}
		return "account";
	}

	@GetMapping("/login")
	public String loginViewController(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		String isLogin = Util.getCookieValueByName(request, "isLogin");
		if (isLogin == null) {
			return "login";
		}
		if (isLogin.equalsIgnoreCase("y")) {
			return "redirect:account";
		}
		return "login";
	}

	@GetMapping("/register")
	public String registerViewController(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		String isLogin = Util.getCookieValueByName(request, "isLogin");
		if (isLogin == null) {
			return "register";
		}
		if (isLogin.equalsIgnoreCase("y")) {
			return "redirect:account";
		}
		return "register";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie curCookie : cookies) {
				curCookie.setMaxAge(0);
				response.addCookie(curCookie);
			}
		}
		return "redirect:/";
	}

	@PostMapping("/checkLogin")
	public String checkLoginController(HttpServletRequest request, HttpServletResponse response) {
		String clientEmail = request.getParameter("clientemail");
		String clientPasswd = request.getParameter("passwd");
		Client curClient = clientService.clientLoginCheck(clientEmail, clientPasswd);
		if (curClient != null) {
			Cookie userNameCookie = new Cookie("userName", curClient.getFullName());
			Cookie userIDCookie = new Cookie("userID", curClient.getId());
			Cookie isLogin = new Cookie("isLogin", "Y");
			userNameCookie.setMaxAge(60 * 60 * 24);
			userIDCookie.setMaxAge(60 * 60 * 24);
			isLogin.setMaxAge(60 * 60 * 24);
			response.addCookie(userIDCookie);
			response.addCookie(userNameCookie);
			response.addCookie(isLogin);

			return "account";
		} else {
			return "redirect:login";
		}
	}

	@PostMapping("/createclient")
	public String checkRegisterController(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ParseException, ServletException {

		String clientID = Util.generateClientID(10);
		while (clientService.isClientIDExits(clientID)) {
			clientID = Util.generateClientID(10);
		}
		String fullName = request.getParameter("fullname");
		String clientEmail = request.getParameter("clientemail");
		String clientPasswd = request.getParameter("passwd");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String town = request.getParameter("town");
		String fullAddress = request.getParameter("fulladdress");
		String addressParameter = city + town + fullAddress;

		String zipCode = "";
		zipCode = Util.findPostCode(addressParameter);
		String saleStage = "New";
		Client curClient = new Client(clientID, fullName, clientEmail, Util.passwordEncoding(clientPasswd), phone, city,
				zipCode, town, fullAddress, saleStage);

		Client newClient = clientService.createClient(curClient);

		if (newClient != null) {
			mailService.prepareAndSend(curClient.getClientEmail(), "註冊成功", "恭喜您已註冊完成");
			Cookie userNameCookie = new Cookie("userName", curClient.getFullName());
			Cookie userIDCookie = new Cookie("userID", curClient.getId());
			Cookie isLogin = new Cookie("isLogin", "Y");
			isLogin.setMaxAge(60 * 60 * 24);
			userNameCookie.setMaxAge(60 * 60 * 24);
			userIDCookie.setMaxAge(60 * 60 * 24);
			response.addCookie(userIDCookie);
			response.addCookie(userNameCookie);
			response.addCookie(isLogin);
			return "redirect:account";
		} else {
			return "register";
		}
	}

	@GetMapping("/account/setting")
	public String clientSettingViewController(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		String isLogin = Util.getCookieValueByName(request, "isLogin");
		if (isLogin == null) {
			return "redirect:login";
		}
		if (isLogin.equalsIgnoreCase("y")) {
			return "account/userSetting";
		}
		return "redirect:login";
	}
}
