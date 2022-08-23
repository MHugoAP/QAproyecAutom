@addNewPet
Feature: Service client POST
  As AQ Automation
  I want to add a new pet in PetStore
  To validate the status

  Background: consume service
    * url url

    @ignoreScenario
  Scenario: Check the service POST method
    * def newPetCreate = {"id": '#(idBody)',"category": {"id": 1,"name": '#(nameCategory)'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}

    Given path 'pet'
    And request newPetCreate
    When method POST
    Then status 200

  @ignoreScenarioOutline
  Scenario Outline: POST a pet with values an id
    * def requestBody = {"id": <idBody>,"category": {"id": 1,"name": '#(nameCategory)'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}

    Given path 'pet'
    And request requestBody
    When method POST
    Then status <code>
    And match response == <expected>

    Examples:
      | idBody      | code | expected
      | "#$%&#"     | 500  | {"code": "#number","type": "#string","message": "#string"} |
      | "valorDos"  | 500  | {"code": "#number","type": "#string","message": "#string"} |