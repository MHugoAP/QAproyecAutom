Feature: Service client POST
  As AQ Automation
  I want to add a new pet in PetStore
  To validate the status code and response
  
  Background: consume service
    * url url

    Scenario: GET request with example table - <id>
      * def newpetCreate = {"id": '#(id)',"category": {"id": 1,"name": '#(nameCategory)'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}

      Given path 'pet', 'id'
      And request newpetCreate
      When method post
      Then status 200