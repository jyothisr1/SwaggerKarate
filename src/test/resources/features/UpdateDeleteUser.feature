Feature: Validate update and delete user

  Background:
    * def body = read("classpath://json//update_user.json")

  Scenario: Verify user data can be updated
    Given url host
    And path '/user/Aby'
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method put
    Then status 200
    And print response

  Scenario: verify user data can be deleted
    Given url host
    And path '/user/Aby'
    When method Delete
    Then status 200
    And print response

