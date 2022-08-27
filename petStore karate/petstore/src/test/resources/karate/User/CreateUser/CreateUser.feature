@createUser
Feature: Create user whit method POST
  As AQ Automation
  I want to add a new pet in PetStore
  To validate the status

  Background: consume service
    * url url

  @createUserStatus200
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

  @createUserBy_id_username
  Scenario Outline:
    * def requestBody = {"id": <id>,"username": <username>,"firstName": '#(firstName)',"lastName": '#(lastName)',"email": '#(email)',"password": '#(password)',"phone": '#(phone)',"userStatus": 0}

    Given path 'user'
    And request requestBody
    When method POST
    Then status <statusCode>

    Examples:
      | id         | statusCode | username | statusCode |
      | "Mauricio" | 500        | "Miguel" | 500        |
      | #$%&,      | 500        | #%$&/,   | 500        |
      | 1.0.2      | 500        | 123      | 500        |
      |            | 200        |          | 200        |

  @createUserBy_firstName_LastName
  Scenario Outline:
    * def requestBody = {"id": '#(id)',"username": '#(username)',"firstName": <firstName>,"lastName": <lastName>,"email": '#(email)',"password": '#(password)',"phone": '#(phone)',"userStatus": 0}

    Given path 'user'
    And request requestBody
    When method POST
    Then status <statusCode>

    Examples:
      | firstName  | statusCode | lastName | statusCode |
      | "Mauricio" | 200        | "Miguel" | 200        |
      | #$%&,      | 200        | #%$&/,   | 200        |
      | 1.0.2      | 200        | 123      | 200        |
      |            | 200        |          | 200        |
