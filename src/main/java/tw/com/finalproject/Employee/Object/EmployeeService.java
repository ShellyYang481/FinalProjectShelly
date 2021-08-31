package tw.com.finalproject.Employee.Object;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.com.finalproject.Util.Util;

@Service
@Transactional
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;

	public Employee loginEmployee(String email, String rawPasswd) {
		Employee resultEmployee = new Employee();
		if (isEmailExits(email)) {
			String correctPasswd = getPasswdByEmail(email);
			if (rawPasswd != null && Util.passwordCheck(rawPasswd, correctPasswd)) {
				resultEmployee = getEmployeeByEmail(email);
				return resultEmployee;
			}
		}
		return null;
	}

	public Employee getEmployeeByEmail(String email) {
		Optional<Employee> result = employeeRepository.findByEmpEmail(email);
		if (result.isEmpty()) {
			return null;
		}
		return result.get();
	}

	public String getPasswdByEmail(String email) {
		Optional<Employee> result = employeeRepository.findByEmpEmail(email);
		if (result.isEmpty()) {
			return null;
		}
		return result.get().getPasswd();
	}

	public boolean isEmailExits(String email) {
		Optional<Employee> result = employeeRepository.findByEmpEmail(email);
		if (result.isEmpty()) {
			return false;
		}
		return true;
	}

	public Employee getEmployeeInfoByID(String id) {
		Optional<Employee> result = employeeRepository.findById(id);
		if (result.isEmpty()) {
			return null;
		}
		return result.get();
	}

	public boolean isIDExists(String uuid) {
		boolean result = employeeRepository.existsById(uuid);
		return result;
	}

	public Employee addEmployeeData(Employee curEmployee) {
		Employee result = employeeRepository.save(curEmployee);
		return result;
	}

	public List<Employee> getQueryEmpName(String queryString) {
		List<Employee> result = employeeRepository.findByFullNameContaining(queryString);
		return result;
	}
}
