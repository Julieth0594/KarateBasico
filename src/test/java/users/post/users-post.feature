Feature: Post user on regres

  Background:
    * url 'https://reqres.in'
    * path 'api/users'
    * request {"name": "#(name)", "job": "#(job)"}

  Scenario Outline: Post a user
    When method post
    Then status 201

    Examples:
    |name|job|
    |Juan|Leader|
    |Deicy|Doctor|
    |Terry|Teacher|