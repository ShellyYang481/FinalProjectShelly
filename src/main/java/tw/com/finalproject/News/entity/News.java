package tw.com.finalproject.News.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
@Entity
@Table(name="CARNEWS")
public class News {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer newsId;
	private String title;
	private String subtitle;
	private String uploadDate;
	@Column(name = "content", columnDefinition = "VARCHAR(MAX) NOT NULL")
	private String content;
	private String remarks;
	
	@Column(name="image", columnDefinition = "VARBINARY(MAX)")
	private byte[] image;
	
	@Transient
	private String base64Image;
	
	@Transient
	private MultipartFile file;
	
	

}
