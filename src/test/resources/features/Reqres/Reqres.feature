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

#Scenario2
  Scenario:
    Given Create user with valid json "CreateUser.json"
    When Send request create new user
    Then Status code should be 201
    And Response body name should be "Samuel Pieter" and job id is "QA Engineer"

#Scenario3
  Scenario Outline: Update user with valid JSON and user id
    Given Update user with valid JSON "<json>" and user id <id>
    When Send request update user
    Then Status code should be <status code>
    And Response body name should be "<name>" and job id is "<job>"
    Examples:
      | id | status code | name                    | job                   | json             |
      | 1  | 200         | Samuel Pieter (Update)  | QA Engineer (Update)  | UpdateUser.json  |
      | 2  | 200         | Samuel Pieter (Update2) | QA Engineer (Update2) | UpdateUser2.json |
      | 3  | 200         | Samuel Pieter (Update3) | QA Engineer (Update3) | UpdateUser3.json |

#Scenario4
  Scenario Outline: Delete user with valid user id
    Given Delete user with valid user id <id>
    When Send request delete user
    Then  Status code should be <status code>
    Examples:
      | id | status code |
      | 1  | 204         |
      | 2  | 204         |
      | 3  | 204         |

