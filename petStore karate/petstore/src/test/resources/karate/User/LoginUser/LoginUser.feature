@loginUser
Feature: Login user whit method GET
  As AQ Automation
  I want to login in PetStore
  To validate the status and response

  Background: consume service
    * url url

  @loginUserStatus200
  Scenario: Login user whit method GET
    * def requestCreate = read('classpath:karate/User/LoginUser/ResponseCreateLogin.json')

    Given path 'user', 'login'
    And request requestCreate.username, requestCreate.password
    When method GET
    Then status 200

  @loginUserStatus400
  Scenario Outline: Invalid login user with modify login

    Given path 'user', <login>
    When method GET
    Then status <statusCode>

    Examples:
      | login       | statusCode |
      | 123         | 404        |
      | "holamundo" | 404        |
      |             | 405        |