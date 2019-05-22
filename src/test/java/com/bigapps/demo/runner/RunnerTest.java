package com.bigapps.demo.runner;



import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = ("classpath:com.bigapps.demo.features"),
        glue = ("classpath:com.bigapps.demo.steps")
)
public class RunnerTest {}