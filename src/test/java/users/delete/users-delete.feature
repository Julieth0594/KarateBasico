Feature: Delete user on regres

  Scenario: Delete a user
    * call read("../post/users-post-snippets.feature@Create")
    Given url 'https://reqres.in/api/users'+ contactId
    When method delete
    Then status 204