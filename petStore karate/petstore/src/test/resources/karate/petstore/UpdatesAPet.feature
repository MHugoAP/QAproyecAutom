Feature: Service client POST
  As AQ Automation
  I want to updates a pet by petId
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method

    Given path 'pet', '123'
    When method post
    Then status 200