package com.tcc.saude.test.steps;

import com.tcc.saude.test.base.*;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Hook extends BaseUtil {

    private BaseUtil base;

    public Hook(BaseUtil base) {
        this.base = base;
    }

    @Before
    public void InitializeTest() {

        System.setProperty("webdriver.firefox.marionette", "/usr/local/bin/geckodriver");
        base.Driver = new FirefoxDriver();
        base.Driver.navigate().to("localhost");
        base.Driver.manage().window().maximize();
    }

    @After
    public void TearDownTest() {

    }
}