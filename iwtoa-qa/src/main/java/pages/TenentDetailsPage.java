package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class TenentDetailsPage {
	
	private WebDriver driver;
	private WebDriverWait wait;
	
	@FindBy(xpath="//input[@id='name']")
	WebElement full_name_field;
	
	@FindBy(xpath="//input[@id='email']")
	WebElement email_field;
	
	@FindBy(xpath="//input[@id='phonenumber']")
	WebElement phone_number_field;
	
	@FindBy(xpath="//input[@id='changed-name-1']")
	WebElement email_radio;
	
	@FindBy(xpath="//input[@id='changed-name-2']")
	WebElement phone_radio;
	
	@FindBy(xpath="//input[@id='changed-name-3']")
	WebElement textmessage_radio;
	
	@FindBy(xpath="//input[@value='Continue']")
	WebElement submit_button;
	
	
	public TenentDetailsPage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
		wait = new WebDriverWait(driver, 20);
		wait.until(ExpectedConditions.visibilityOf(full_name_field));
	}
	
	public AddressSearchPage fill_form_with_valid_info(String fullName, String email, String phoneNumber) {
		full_name_field.sendKeys(fullName);
		email_field.sendKeys(email);
		phone_number_field.sendKeys(phoneNumber);
		email_radio.click();
		submit_button.click();
		return new AddressSearchPage(driver);
	}
	
	
	
}
