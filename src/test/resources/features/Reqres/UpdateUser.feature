@Tugas
  Feature: Update User

Scenario Outline: Update user with valid JSON and user id
Given Update user with valid JSON "<json>" and user id <id>
When Send request update user
Then Status code should be <status code>
And Response body name should be "<name>" and job id is "<job>"
And Validate Json Schema "UpdateUserJsonSchema.json"
Examples:
| id | status code | name                    | job                   | json             |
| 1  | 200         | Samuel Pieter (Update)  | QA Engineer (Update)  | UpdateUser.json  |
| 2  | 200         | Samuel Pieter (Update2) | QA Engineer (Update2) | UpdateUser2.json |
| 3  | 200         | Samuel Pieter (Update3) | QA Engineer (Update3) | UpdateUser3.json |