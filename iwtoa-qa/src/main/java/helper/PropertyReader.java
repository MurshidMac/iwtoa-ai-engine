package helper;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

public class PropertyReader {

	private static FileInputStream file;
	public static Properties OR;
	
	static {
		try {
			String filePath = System.getProperty("user.dir") + "/src/main/resources/config.properties";
			file = new FileInputStream(new File(filePath));
			OR = new Properties();
			OR.load(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static String getURL() {
		return OR.getProperty("URL");
	}
	
	public static String getRemoteURL() {
		return OR.getProperty("remote_url");
	}

}
