package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

public class AddressSearchPage {
	
	private WebDriver driver;
	private WebDriverWait wait;
	
	@FindBy(xpath="//h1[contains(text(),'What is your address?')]")
	WebElement address_page_header;
	
	@FindBy(xpath="//input[@id='address']")
	WebElement postal_code_field;
	
	@FindBy(xpath="//input[@value='Find address']")
	WebElement find_address_button;
	
	
	public AddressSearchPage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
		wait = new WebDriverWait(driver, 20);
		wait.until(ExpectedConditions.visibilityOf(postal_code_field));
	}
	
	public AddressResultsPage searchforAddress(String postalCode) {
		postal_code_field.sendKeys(postalCode);
		wait.until(ExpectedConditions.elementToBeClickable(find_address_button));
		find_address_button.click();
		return new AddressResultsPage(driver);
	}
	
	public void verifyAddressHeader() {
		Assert.assertEquals(address_page_header.getText(), "What is your address?");
	}

}
