package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class AddressResultsPage {
	
	WebDriver driver;
	private WebDriverWait wait;

	@FindBy(xpath="//a[contains(text(),'change')]")
	WebElement change_address;
	
	@FindBy(xpath="//select[@id='sort']")
	WebElement address_dropdown;
	
	@FindBy(xpath="//option[contains(text(),'Buckingham')]")
	WebElement address_option;
	
	@FindBy(xpath="//input[@value='Continue']")
	WebElement continue_button;	
	
	
	public AddressResultsPage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
		wait = new WebDriverWait(driver, 20);
		wait.until(ExpectedConditions.visibilityOf(change_address));
	}
	
	public void select_address() {
		address_dropdown.click();
		address_option.click();
		continue_button.click();
	}
	
}
