package com.automation.runner;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

    //karate com.automation.runner
    @Karate.Test
    Karate testSuite(){
        return Karate.run("classpath:features").outputCucumberJson(true).reportDir("Cucumber-Karate");
    }
    //junit com.automation.runner
//    @Test
//    public void runSuite(){
////        Karate.run("classpath:features").parallel(2);
//        Karate.run("classpath:features").outputCucumberJson(true);
//    }
}
