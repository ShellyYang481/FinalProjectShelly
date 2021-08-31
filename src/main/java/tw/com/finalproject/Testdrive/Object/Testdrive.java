package tw.com.finalproject.Testdrive.Object;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Table(name = "TESTDRIVE")
@Component
@Data
@AllArgsConstructor
public class Testdrive {
	
	@Id 
	private String formId;
	private String driveDate;
	private String carMod;
	private String driveLoc;
	private String driveLocSit;
	private String sales;
	private String formTime;
	private String nameCli;
	private String gendCli;
	private String timCli;
	private String mailCli;
	private String telCli;
	private String remark;
	
	public Testdrive() {
		super();
	}
	
}
