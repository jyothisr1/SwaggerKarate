Feature: Validate create new user

  Background:
    * def body = read("classpath://json//create_user.json")

  Scenario: verify new user can be created
    Given url host
    And path '/user'
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method post
    Then status 200
    And print response