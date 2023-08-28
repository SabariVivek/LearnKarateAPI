Feature: GET Request Feature

  Scenario: GET Request with Header 1
    Given url 'https://restful-booker.herokuapp.com'
    And path '/auth'
    And header Connection = 'keep-alive'
    And header Accept-Encoding = 'gzip, deflate, br'
    And header Accept = '*/*'
    And header Content-Type = 'application/json'
    * text payload =
    """
    {
        "username": "admin",
        "password": "password123"
    }
    """
    And request payload
    When method POST
    Then status 200
    * def tokenLength = response.token.length
    * match tokenLength == 15

  Scenario: GET Request with Header 2
    Given url 'https://restful-booker.herokuapp.com'
    And path '/auth'
    * def requestHeaders = {Connection: 'keep-alive', Accept: '*/*', Content-Type: 'application/json'}
    And headers requestHeaders
    * text payload =
    """
    {
        "username": "admin",
        "password": "password123"
    }
    """
    And request payload
    When method POST
    Then status 200
    * def tokenLength = response.token.length
    * match tokenLength == 15

  Scenario: GET Request with Header 3
    Given url 'https://restful-booker.herokuapp.com'
    And path '/auth'
    * configure headers = {Connection: 'keep-alive', Accept: '*/*', Content-Type: 'application/json'}
    * text payload =
    """
    {
        "username": "admin",
        "password": "password123"
    }
    """
    And request payload
    When method POST
    Then status 200
    * def tokenLength = response.token.length
    * match tokenLength == 15

