Feature: GET Request Feature

  Scenario: GET Request with Valid Data
    Given url baseURI
    And path '/api/users/2'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def firstName = jsonResponse.data.first_name
    * def lastName = jsonResponse.data.last_name
    * def email = jsonResponse.data.email
    * match firstName == 'Janet'
    * match lastName == 'Weaver'
    * match email == 'janet.weaver@reqres.in'

  Scenario: GET Request with InValid Data
    Given url baseURI
    And path '/api/users/200'
    When method GET
    Then status 404
    * print response

  Scenario: GET Request with Params
    * def query = {page: 2, last_name: "Howell", id: 12}
    Given url baseURI
    And path '/api/users'
    And params query
    When method GET
    Then status 200
    * print response