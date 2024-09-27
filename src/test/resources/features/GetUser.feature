Feature: Validate get end point by name

  Background:

    * def username = read("classpath://json//create_user.json")

  Scenario: verify user data can be retrieved by name
    Given url host
    And path '/user/' + username.username
    When method get
    Then status 200
    And print response