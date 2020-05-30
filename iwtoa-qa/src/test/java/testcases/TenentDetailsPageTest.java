package testcases;

import org.testng.annotations.Test;

import pages.AddressResultsPage;
import pages.AddressSearchPage;
import pages.TenentDetailsPage;
import testbase.TestBase;

public class TenentDetailsPageTest extends TestBase{
	
	@Test
	public void enter_valid_details() throws InterruptedException {
		System.out.println("one");
		logExtentReport("info","starting test");
		openApplication();
		TenentDetailsPage tenentdetailspage = new TenentDetailsPage(driver);		
		logExtentReport("info","entering tenent details");
		AddressSearchPage addresssearchpage = tenentdetailspage.fill_form_with_valid_info("Nimesh Karunathilaka", "nimeshkarunathilaka96@gmail.com", "+94767373075");
		addresssearchpage.verifyAddressHeader();
		logExtentReport("pass","details entered successfully");
		logExtentReport("info","entering postal code");
		AddressResultsPage addressresltspage = addresssearchpage.searchforAddress("SW1A 1AA");
		logExtentReport("pass","results displayed");
		Thread.sleep(5000);
	}
	
	@Test
	public void enter_invalid_details() throws InterruptedException {
		System.out.println("two");
		openApplication();
		TenentDetailsPage tenentdetailspage = new TenentDetailsPage(driver);		
		logExtentReport("info","entering tenent details");
		AddressSearchPage addresssearchpage = tenentdetailspage.fill_form_with_valid_info("Nimesh Karunathilaka", "nimeshkarunathilaka96@gmail.com", "+94767373075");
		addresssearchpage.verifyAddressHeader();
		Thread.sleep(5000);
	}
}
         