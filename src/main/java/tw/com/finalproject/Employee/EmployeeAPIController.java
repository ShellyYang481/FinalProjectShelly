package tw.com.finalproject.Employee;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.finalproject.Employee.Object.Employee;
import tw.com.finalproject.Employee.Object.EmployeeService;
import tw.com.finalproject.Mail.MailService;
import tw.com.finalproject.Util.Util;

@Controller
public class EmployeeAPIController {

	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private MailService mailService;

	// Admin Adding Employee into DB
	@PostMapping("/api/v1/checkAddEmp")
	public String AdminAddingEmployee(@RequestParam("fullname") String fullName, @RequestParam("empemail") String email,
			@RequestParam("empphone") String phone, @RequestParam("emptitle") String title,
			@RequestParam("manager") String manager, @RequestParam("department") String department,
			@RequestParam("loc") String location, @RequestParam("sal") String salary) {

		String empID = Util.generateClientID(8);
		while (employeeService.isIDExists(empID)) {
			empID = Util.generateClientID(8);
		}

		String id = empID;
		String rawsPasswd = Util.generateClientID(6);
		String enCodingPasswd = Util.passwordEncoding(rawsPasswd);

		int sal = 0;
		try {
			sal = Integer.parseInt(salary);
		} catch (Exception e) {
			sal = 28000;
		}

		Employee curEmployee = new Employee(id, fullName, email, enCodingPasswd, phone, title, manager, department,
				location, sal);
		try {
			Employee newEmployee = employeeService.addEmployeeData(curEmployee);
			if (newEmployee != null) {
				try {
					String subject = "歡迎加入 Auto Comp!";
					String message = "Welcome, " + newEmployee.getFullName() + ".  Your new Password is " + rawsPasswd
							+ ".";
					mailService.prepareAndSend(newEmployee.getEmpEmail(), subject, message);
				} catch (Exception e) {
					System.out.println("Send Mail Fail.");
				}
				String url = "/inner/emp?q=" + empID;
				return "redirect:" + url;
			} else {
				return "redirect:/inner/admin";
			}
		} catch (Exception e) {
			return "redirect:/inner/admin";
		}
	}

	// SearchBar API get query result Employee
	@PostMapping(path = "/api/v1/getQueryEmpName", produces = "application/json; charset= UTF-8")
	@ResponseBody
	public List<Map<String, String>> getQueryEmployeeName(@RequestParam("q") String queryString) {

		List<Employee> allEmployeeName = employeeService.getQueryEmpName(queryString);
		List<Map<String, String>> resultList = new ArrayList<Map<String, String>>();
		for (Employee curEmp : allEmployeeName) {
			Map<String, String> resultMap = new HashMap<String, String>();
			resultMap.put("name", curEmp.getFullName());
			resultMap.put("uuid", curEmp.getId());
			resultList.add(resultMap);
		}

		if (allEmployeeName != null) {
			return resultList;
		} else {
			return null;
		}
	}
}
