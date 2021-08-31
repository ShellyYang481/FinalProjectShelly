package tw.com.finalproject.Util;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service
public class Util {

	private final static String googleHostURL = "https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyAvr3kMsioad5Zo07JoypCyYwHpAq4qy5w";

	public static String findPostCode(String address) throws IOException, ParseException {
		RestTemplate restTemplate = new RestTemplate();
		String postCode = null;
		String googleurl = StringUtils.join(googleHostURL, "&address=", address);
		String rs = restTemplate.getForObject(googleurl, String.class);
		JsonObject convertedObject = new Gson().fromJson(rs, JsonObject.class);
		JsonArray addressComponents = convertedObject.getAsJsonArray("results").get(0).getAsJsonObject()
				.getAsJsonArray("address_components");
		postCode = addressComponents.get(addressComponents.size() - 1).getAsJsonObject().get("long_name").getAsString();

		return postCode;
	}

	public static String getCookieValueByName(HttpServletRequest request, String name) {

		Cookie[] cookies = request.getCookies();

		String cookieName = name;
		String defaultValue = null;

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookieName.equals(cookie.getName()))
					return (cookie.getValue());
			}
		}

		return (defaultValue);
	}

	public static String generateClientID(int length) {

		boolean useLetters = true;
		boolean useNumbers = true;
		String generatedString = RandomStringUtils.random(length, useLetters, useNumbers);
		System.out.println(generatedString);

		return generatedString;
	}

	public static String passwordEncoding(String passwd) {
		String hashed = BCrypt.hashpw(passwd, BCrypt.gensalt(11));
		return hashed;
	}

	public static boolean passwordCheck(String rawPasswd, String hashed) {
		return BCrypt.checkpw(rawPasswd, hashed);
	}

}
