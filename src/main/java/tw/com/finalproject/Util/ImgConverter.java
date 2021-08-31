package tw.com.finalproject.Util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.UUID;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.web.multipart.MultipartFile;


public class ImgConverter {
	
	public static byte[] convertToBytesArrays(MultipartFile multipartFile) throws IOException {

		InputStream fileContent = multipartFile.getInputStream();
		return IOUtils.toByteArray(fileContent);

	}

	public static byte[] base64ConvertToByte(String base64) {

		byte[] res = Base64.getDecoder().decode(base64);

		return res;

	}
	
	public static String ByteConvertToBase64(byte[] b) {
		String base64 = Base64.getEncoder().encodeToString(b);
		return base64;
		
	}
	
	@Autowired
	static ResourceLoader resourceLoader;

	public static String  FileUpload(MultipartFile file) throws IOException {

		String fileName = file.getOriginalFilename(); // 檔名
		String suffixName = fileName.substring(fileName.lastIndexOf(".")); // 字尾名
		
		fileName = UUID.randomUUID()+ suffixName; // 新檔名

		Resource resource = resourceLoader.getResource("classpath:static/images/news/");

		File filetools = new File(resource.getURL().getPath() + fileName);

		if (!filetools.getParentFile().exists()) {
			filetools.getParentFile().mkdirs();
		}
		try {
			file.transferTo(filetools.getAbsoluteFile());
		} catch (IOException e) {
			e.printStackTrace();
		}

		return filetools.getPath();

	}

}
