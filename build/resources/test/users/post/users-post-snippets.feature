@ignore
Feature: Reusable scnarios for post a user

  @Create

  Scenario:
    Given url 'https://reqres.in/api/users'
    And request {"name": "Juan", "job": "Leader"}
    When method post
    Then status 201
    And def contactId = $.id