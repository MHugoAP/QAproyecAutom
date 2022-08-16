Feature: Service client GET
  As AQ Automation
  I want to search for a pet by id
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service GET method

    Given path 'pet', '244'
    When method get
    Then status 200