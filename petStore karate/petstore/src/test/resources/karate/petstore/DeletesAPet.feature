Feature: Service client delete
  As AQ Automation
  I want to delete a pet in PetStore
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service DELETE method

    Given path 'pet', id
    When method delete
    Then status 200