package tw.com.finalproject;

import java.io.IOException;
import java.text.ParseException;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import tw.com.finalproject.Util.Util;

@SpringBootTest
class FinalProjectGroup5ApplicationTests {

	@Test
	void contextLoads() throws IOException, ParseException {
		String address = "桃園市大園區中正東路438巷15號";
		String findPostCode = Util.findPostCode(address);
		System.out.println(findPostCode);
		
	}

}
