Feature: Create user whit method POST
  As AQ Automation
  I want to add a new pet in PetStore
  To validate the status

  Background: consume service
    * url url

  Scenario: Create user whit method POST
    * def requestBody = read('classpath:karate/User/CreateUser/RequestBodyCreateUser.json')

    Given path 'user'
    And request requestBody
    When method POST
    Then status 200
    And assert requestBody.id == id
    And assert requestBody.username == username
    And assert requestBody.firstName == firstName
    And assert requestBody.lastName == lastName
    And assert requestBody.email == email
    And assert requestBody.password == password
    And assert requestBody.phone == phone