package testbase;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Logger;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.BeforeTest;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;

import helper.EmailHelper;
import helper.PropertyReader;
import helper.ReportGenerator;

public class TestBase {
	
	public WebDriver driver;
	public static ExtentReports extent;
	public static ExtentTest test;
	// String remoteURL = System.getProperty("DOCKER_URL");
	// String appURL = System.getProperty("APP_URL");
	private static final Logger LOGGER = Logger.getLogger("TestBase");

	String remoteURL = System.getProperty("remote_url");
	String appURL = System.getProperty("URL");
	

	@BeforeSuite
	public void beforeSuite() {
		extent = ReportGenerator.getInstance();
	}
	
	@BeforeMethod
	public void beforeMethod() {
		test = extent.createTest(getClass().getSimpleName());
		test.log(Status.INFO, " test-started-testbase");
	}
	
	@BeforeMethod
	public void setup() throws MalformedURLException {
		
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--kiosk");
		DesiredCapabilities chromecapabilities = DesiredCapabilities.chrome();
		options.setCapability(ChromeOptions.CAPABILITY, chromecapabilities);
		URL address;
		
		if (remoteURL == null) {
			// reading remote WebDriver URL from properties file
			System.out.println("docker-url from config file : " + PropertyReader.getRemoteURL());
			System.out.println("app-url from config file : " + PropertyReader.getURL());
			address = new URL(PropertyReader.getRemoteURL());
			LOGGER.info("Address   "+ address);
			LOGGER.info("options   "+ options);
			LOGGER.info("Driver Before   "+ driver);
			driver = new RemoteWebDriver(address, options);
			LOGGER.info("Driver After   "+ driver);

		} else {
			// reading remote WebDriver URL from environment variables
			System.out.println("docker-url from enviorenemnt variables - " + System.getProperty("remote_url"));
			System.out.println("app-url from enviorenemnt variables - " + System.getProperty("URL"));
			address = new URL(remoteURL);
			driver = new RemoteWebDriver(address, options);
		}
	}
	
	
	@AfterTest
	public void aftertest() {
		
	}
	
	@AfterMethod
	public void afterMethod() {
		driver.quit();
		extent.flush();
	}
		
	@AfterSuite
	public void afterSuite() throws AddressException, MessagingException {
		//EmailHelper.generateAndSendEmail();
	}
	
	public static void logExtentReport(String status, String message) {
		if(status.equalsIgnoreCase("pass")) {
			test.log(Status.PASS, message);
		} else if(status.equalsIgnoreCase("info")) {
			test.log(Status.INFO, message);
		}
	}
	
	public void openApplication() {
		if(appURL == null) {
			driver.get(PropertyReader.getURL());
		} else {
			driver.get(appURL);
		}
	}

}
