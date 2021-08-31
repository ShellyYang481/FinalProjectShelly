package tw.com.finalproject.Employee.Object;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, String> {
	public Optional<Employee> findByEmpEmail(String email);
	public List<Employee> findByFullNameContaining(String name);

}
