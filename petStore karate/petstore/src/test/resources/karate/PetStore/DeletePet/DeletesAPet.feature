@deletePet
Feature: Service client delete
  As AQ Automation
  I want to delete a pet in PetStore
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service DELETE method

    Given path 'pet', idBody
    When method DELETE
    Then status 200

  Scenario Outline: DELETE a pet with values an id in the url
    * def idPet = '<idBody>'

    Given path 'pet', idPet
    When method DELETE
    Then status <code>
    And match response == <expected>

    Examples:
      | idBody    | code | expected                                                                                               |
      | "#$%&"    | 404  | {"code": "#number","type": "#string","message": "#string"}                                             |
      | numeroUno | 404  | {"code": "#number","type": "#string","message": "#string"}                                             |
      |           | 405  | <?xml version="1.0" encoding="UTF-8" standalone="yes"?><apiResponse><type>unknown</type></apiResponse> |