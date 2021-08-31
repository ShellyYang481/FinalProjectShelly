package tw.com.finalproject.Employee.Object;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientInnerRepository extends JpaRepository<ClientInner, String> {

	public List<ClientInner> findByInchargeEmployee(Employee queryEmp);
	public List<ClientInner> findByfullNameContains(String queryString);
}
