package com.tcc.saude.test.runner;

import cucumber.api.CucumberOptions;
import cucumber.junit.Cucumber;

import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/main/java/com/tcc/test/features", glue = {"src/main/java/com/tcc/test/steps"})
public class TestRunner {
}
