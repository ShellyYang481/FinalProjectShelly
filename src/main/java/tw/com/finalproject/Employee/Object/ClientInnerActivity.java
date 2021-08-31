package tw.com.finalproject.Employee.Object;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.Data;

@Entity
@Table(name = "client_inner_activity")
@Component
@Data
public class ClientInnerActivity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String title;
	private String actType;
	private String comment;
	@ManyToOne
	@JoinColumn(name = "emp_id")
	private Employee employee;
	@ManyToOne
	@JoinColumn(name = "cli_id")
	private ClientInner clientInner;
	@Column(name = "create_date", insertable = false, updatable = false)
	private String curDate;
	public long getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getActType() {
		return actType;
	}
	public String getComment() {
		return comment;
	}
	public Employee getEmployee() {
		return employee;
	}
	public ClientInner getClientInner() {
		return clientInner;
	}
	
	
}
