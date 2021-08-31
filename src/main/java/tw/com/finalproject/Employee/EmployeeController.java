package tw.com.finalproject.Employee;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.WebUtils;

import tw.com.finalproject.Employee.Object.Employee;
import tw.com.finalproject.Employee.Object.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@GetMapping("/inner")
	public String employeeLoginPageViewController(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		Cookie dep = WebUtils.getCookie(request, "empDep");

		if (dep == null) {
			return "inner/inner";
		}
		String depString = dep.getValue();
		if (depString.equalsIgnoreCase("admin")) {
			return "redirect:inner/admin";
		}
		if (depString.equalsIgnoreCase("sales")) {
			return "redirect:inner/sales";
		}
		return "inner/inner";
	}

	@GetMapping("/empLogout")
	public String employeeLogoutController(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie curCookie : cookies) {
				curCookie.setMaxAge(0);
				response.addCookie(curCookie);
			}
		}
		return "redirect:/inner";
	}

	@GetMapping("/inner/admin")
	public String employeeAdminOrBossViewController(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		Cookie dep = WebUtils.getCookie(request, "empDep");
		String empUUID = WebUtils.getCookie(request, "empUUID").getValue();
		Employee emp = employeeService.getEmployeeInfoByID(empUUID);
		request.setAttribute("empName", emp.getFullName());
		if (dep == null) {
			return "redirect:/inner";
		}
		String depString = dep.getValue();
		if (depString.equalsIgnoreCase("admin") || depString.equalsIgnoreCase("boss")) {
			return "inner/AddEmployeePage";
		}
		return "redirect:/inner";
	}

	@GetMapping("/inner/sales")
	public String employeeSalesViewController(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		Cookie dep = WebUtils.getCookie(request, "empDep");
		String depString = dep.getValue();
		String empUUID = WebUtils.getCookie(request, "empUUID").getValue();
		Employee emp = employeeService.getEmployeeInfoByID(empUUID);
		request.setAttribute("empName", emp.getFullName());
		request.setAttribute("stage", "All");
		if (depString == null) {
			return "redirect:/inner";
		}
		if (depString.equalsIgnoreCase("sales")) {
			return "inner/SalesAllClientTemplate";
		}
		return "redirect:/inner";
	}
	
	@GetMapping("/inner/admin/addEmployee")
	public String addEmployeePageViewController(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		Cookie dep = WebUtils.getCookie(request, "empDep");
		String depString = dep.getValue();
		String empUUID = WebUtils.getCookie(request, "empUUID").getValue();
		Employee emp = employeeService.getEmployeeInfoByID(empUUID);
		request.setAttribute("empName", emp.getFullName());
		if (depString == null) {
			return "redirect:/inner";
		}
		if (depString.equalsIgnoreCase("admin")) {
			return "inner/AddEmployeePage";
		}
		return "redirect:/inner";
	}

	@PostMapping("/empLoginCheck")
	public String employeeLoginController(@RequestParam("clientemail") String clientEmail,
			@RequestParam("passwd") String clientPasswd, HttpServletResponse response) {

		Employee curEmp = employeeService.loginEmployee(clientEmail, clientPasswd);

		if (curEmp != null) {
			Cookie cookieUUID = new Cookie("empUUID", curEmp.getId());
			Cookie cookieDep = new Cookie("empDep", curEmp.getDepartment());
			response.addCookie(cookieUUID);
			response.addCookie(cookieDep);

			if (curEmp.getDepartment().equalsIgnoreCase("admin")) {
				return "redirect:/inner/admin";
			} else if (curEmp.getDepartment().equalsIgnoreCase("Sales")) {
				return "redirect:/inner/sales";
			} else if (curEmp.getDepartment().equalsIgnoreCase("deliver")) {
				return "redirect:/inner/deliver";
			} else if (curEmp.getDepartment().equalsIgnoreCase("service")) {
				return "redirect:/inner/services";
			}
		} else {
			return "redirect:/inner";
		}
		return "redirect:/inner";
	}

	@GetMapping("/inner/emp")
	public String showEmployeeProfilePage(@RequestParam("q") String id, HttpServletRequest request) {
		String empUUID = WebUtils.getCookie(request, "empUUID").getValue();
		Employee emp = employeeService.getEmployeeInfoByID(empUUID);
		request.setAttribute("empName", emp.getFullName());
		Employee curEmployee = employeeService.getEmployeeInfoByID(id);
		request.setAttribute("id", curEmployee.getId());
		request.setAttribute("fullName", curEmployee.getFullName());
		request.setAttribute("email", curEmployee.getEmpEmail());
		request.setAttribute("phone", curEmployee.getPhone());
		request.setAttribute("title", curEmployee.getTitle());
		request.setAttribute("manager", curEmployee.getManager());
		request.setAttribute("department", curEmployee.getDepartment());
		request.setAttribute("loc", curEmployee.getLoc());
		request.setAttribute("sal", curEmployee.getSal());
		return "inner/employeeProfile";
	}
	
	
}
