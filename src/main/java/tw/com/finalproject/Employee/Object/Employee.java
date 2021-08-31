package tw.com.finalproject.Employee.Object;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity(name = "Employee")
@Table(name = "EMP")
@Component
@Data
@AllArgsConstructor
public class Employee {

	@Id
	private String id;
	private String fullName;
	private String empEmail;
	private String passwd;
	private String phone;
	private String title;
	private String manager;
	private String department;
	private String loc;
	private int sal;

	public Employee() {
		super();
	}

}
