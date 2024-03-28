@Assignment
Feature: Serenity Rest QE 14

#Scenario1
  Scenario Outline: Get list user with valid parameter page
    Given Get list user with parameter page <page>
    When Send request get list user
    Then Status code should be <status code>
    And Response body page should be <page>
    And Validate Json Schema "ListUsersJsonSchema.json"
    Examples:
      | page | status code |
      | 1    | 200         |
      | 2    | 200         |
