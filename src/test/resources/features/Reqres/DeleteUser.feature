@Tugas
  Feature: Delete User

    Scenario Outline: Delete user with valid user id
      Given Delete user with valid user id <id>
      When Send request delete user
      Then  Status code should be <status code>
      Examples:
        | id | status code |
        | 1  | 204         |
        | 2  | 204         |
        | 3  | 204         |
