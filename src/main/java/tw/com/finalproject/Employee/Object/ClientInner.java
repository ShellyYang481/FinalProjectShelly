package tw.com.finalproject.Employee.Object;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity(name = "clientInner")
@Table(name = "client_inner")
@Component
@Data
@AllArgsConstructor
public class ClientInner {
	
	@Id
	private String id;
	private String fullName;
	private String clientEmail;
	private String phone;
	private String city;
	private String zipCode;
	private String town;
	private String fullAddress;
	private String saleStage;
	
	@ManyToOne(optional = true)
    @JoinColumn(name = "emp_id", referencedColumnName = "id")
	private Employee inchargeEmployee;

	public ClientInner() {
		super();
	}
	
	
}
