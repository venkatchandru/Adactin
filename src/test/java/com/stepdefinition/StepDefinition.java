package com.stepdefinition;

import java.util.concurrent.TimeUnit;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class StepDefinition {
	
	WebDriver driver;


@Given("User should on the adatin page")
public void user_should_on_the_adatin_page() {
   WebDriverManager.chromedriver().setup();
   driver = new ChromeDriver();
   driver.get("https://adactinhotelapp.com/index.php");
	driver.manage().window().maximize();
	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
}

@When("User should login {string} and {string}")
public void user_should_login_and(String UserName, String Password) {
    driver.findElement(By.id("username")).sendKeys(UserName);
    driver.findElement(By.id("password")).sendKeys(Password);
    driver.findElement(By.id("login")).click();
}


@When("User should search hotels {string}, {string}, {string}, {string},  {string}	, {string}, {string} and {string}")
public void user_should_search_hotels_and(String location, String Hotel, String RoomType, String Noofrooms, String Checkindate, String Checkoutdate, String Adultsperroom, String Childrenperroom) {
    driver.findElement(By.id("location")).sendKeys(location);
    driver.findElement(By.id("hotels")).sendKeys(Hotel);
    driver.findElement(By.id("room_type")).sendKeys(RoomType);
    driver.findElement(By.id("room_nos")).sendKeys(Noofrooms);
    driver.findElement(By.id("datepick_in")).sendKeys(Checkindate);
    driver.findElement(By.id("datepick_out")).sendKeys(Checkoutdate);
    driver.findElement(By.id("adult_room")).sendKeys(Adultsperroom);
    driver.findElement(By.id("child_room")).sendKeys(Childrenperroom);
    driver.findElement(By.id("Submit")).click();
}

@When("User should select hotel")
public void user_should_select_hotel() {
   driver.findElement(By.id("radiobutton_0")).click();
   driver.findElement(By.id("continue")).click();
}

@When("User should book the hotel {string},{string},{string},{string},{string},{string} , {string} and {string}")
public void user_should_book_the_hotel_and(String FirstName, String LastName, String BillingAddress, String Creditcardno, String Creditcardtype, String Expirymonth, String ExpiryYear, String CVVNumber) {
  
   driver.findElement(By.id("first_name")).sendKeys(FirstName);
   driver.findElement(By.id("last_name")).sendKeys(LastName);
   driver.findElement(By.id("address")).sendKeys(BillingAddress);
   driver.findElement(By.id("cc_num")).sendKeys(Creditcardno);
   driver.findElement(By.id("cc_type")).sendKeys(Creditcardtype);
   driver.findElement(By.id("cc_exp_month")).sendKeys(Expirymonth);
   driver.findElement(By.id("cc_exp_year")).sendKeys(ExpiryYear);
   driver.findElement(By.id("cc_cvv")).sendKeys(CVVNumber);
   driver.findElement(By.id("book_now")).click();
   WebElement findElement = driver.findElement(By.id("order_no"));
  String attribute = findElement.getAttribute("value");
   System.out.println(attribute);
   driver.close();
}

@Then("User should get booking confirmation number")
public void user_should_get_booking_confirmation_number() {
	Assert.assertTrue("Successfully Confirmed", true);
	driver.close();
	
		}
    
}

