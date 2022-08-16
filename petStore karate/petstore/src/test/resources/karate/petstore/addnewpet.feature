Feature: Service client POST
  As AQ Automation
  I was to add a new pet in PetStore
  To validate the status code and response
  
  Background: consume service
    * url url
    
    Scenario: Check the service POST method
      * def newpetCreate = {"id": '#(id)',"category": {"id": 1,"name": '#(nameCategory)'},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 1,"name": '#(tagsName)'}],"status": "available"}

      Given path 'pet'
      And request newpetCreate
      When method post
      Then status 200
