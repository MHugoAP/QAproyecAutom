Feature: Login user whit method GET
  As AQ Automation
  I want to login in PetStore
  To validate the status and response

  Background: consume service
    * url url

  Scenario: Login user whit method GET

    Given path 'user', 'login'
    When method GET
    Then status 200