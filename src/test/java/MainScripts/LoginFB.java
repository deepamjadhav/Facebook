package MainScripts;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginFB {
	
	WebDriver driver;

@Given("Launch the Browser")
public void launch_the_browser() {
	WebDriverManager.chromedriver().setup();
	driver=new ChromeDriver();
   
}

@Given("open the facebook application")
public void open_the_facebook_application() {
	driver.get("https://www.facebook.com/");
    
}

@When("enter the valid username and password")
public void enter_the_valid_username_and_password() {
	driver.findElement(By.id("email")).sendKeys("deep");
	driver.findElement(By.id("pass")).sendKeys("abcd");
}
@When("click the login button")
public void click_the_login_button() {
	driver.findElement(By.name("login")).click();
   
}


@Then("check more outcomes")
public void check_more_outcomes() {
    driver.close();
}


}
