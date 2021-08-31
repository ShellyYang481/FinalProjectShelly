package tw.com.finalproject.Employee.Object;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientInnerActivityRepository extends JpaRepository<ClientInnerActivity, Long> {
	
	public List<ClientInnerActivity> findByClientInnerOrderByCurDateDesc(ClientInner client);

}
