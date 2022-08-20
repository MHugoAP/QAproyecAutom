Feature: Service client PUT
  As AQ Automation
  I want to updates a pet by petId
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service PUT method
    * def responseOk = read('classpath:karate/petstore/ResponseOkUpdatesPet.json')
    * def requestCreate = {"id": '#(idBody)',"category": {"id": 1,"name": '#(nameCategory)'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}

    Given path 'pet'
    And request requestCreate
    When method PUT
    Then status 200
    And match response == responseOk

  Scenario Outline: Update a pet with invalid values an id in the url
    * def requestBody = {"id": <idExample>,"category": {"id": 1,"name": '#(nameCategory2)'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}

    Given path 'pet'
    And request requestBody
    When method PUT
    Then status 500
    And match response == {"code": "#number","type": "#string","message": "#string"}

    Examples:
      | idExample   |
      | "#%#%#"     |
      | "numeroUno" |
      | 56"756756"  |