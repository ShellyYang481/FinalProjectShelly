package tw.com.finalproject.Account.Object;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Table(name = "CLIENT")
@Component
@Data
@AllArgsConstructor
public class Client {

	@Id
	private String id;

	@Column(name = "full_name")
	private String fullName;
	@Column(name = "client_email", unique = true)
	private String clientEmail;
	@Column(name = "passwd")
	private String passwd;
	@Column(name = "phone")
	private String phone;
	@Column(name = "city")
	private String city;
	@Column(name = "zip_code")
	private String zipCode;
	@Column(name = "town")
	private String town;
	@Column(name = "full_address")
	private String fullAddress;
	@Column(name = "sale_stage")
	private String saleStage;

	public Client() {
		super();
	}

	

}
