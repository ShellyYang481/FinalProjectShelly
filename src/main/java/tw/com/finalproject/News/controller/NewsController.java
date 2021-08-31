package tw.com.finalproject.News.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.util.WebUtils;

import tw.com.finalproject.Employee.Object.Employee;
import tw.com.finalproject.Employee.Object.EmployeeService;

@Controller
public class NewsController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/inner/admin/AllNewsPage")
	public String allNews(HttpServletRequest request) {
		String empUUID = WebUtils.getCookie(request, "empUUID").getValue();
		Employee emp = employeeService.getEmployeeInfoByID(empUUID);
		request.setAttribute("empName", emp.getFullName());
		return "adminAllNews";
	}
	
	@GetMapping("/News")
	public String allNewsForUser() {
		return "newsForUser";
	}
	
	@GetMapping("/News/OneNews")
	public String displayOneNewsForUser() {
		return "displayOneNews";
	}
	

}
