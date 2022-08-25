@findPetById
Feature: Service client GET
  As AQ Automation
  I want to get for a pet by id
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service GET method

    Given path 'pet', idBody
    When method GET
    Then status 200

  Scenario Outline: GET a pet with invalid values an id in the url

    Given path 'pet', <idExample>
    When method GET
    Then status <code>
    And match response == <expected>

    Examples:
      | idExample   | code | expected                                                                                               |
      | 9876543211  | 404  | {"code": "#number","type": "#string","message": "#string"}                                             |
      | "numeroUno" | 404  | {"code": "#number","type": "#string","message": "#string"}                                             |
      |             | 405  | <?xml version="1.0" encoding="UTF-8" standalone="yes"?><apiResponse><type>unknown</type></apiResponse> |