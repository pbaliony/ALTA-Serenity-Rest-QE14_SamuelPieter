@Tugas
  Feature: Create User

    Scenario: Create user with valid json
      Given Create user with valid json "CreateUser.json"
      When Send request create new user
      Then Status code should be 201
      And Response body name should be "Samuel Pieter" and job id is "QA Engineer"
      And Validate Json Schema "CreateUserJsonSchema.json"

    Scenario: Create user with invalid json
      Given Create user with invalid json "CreateUserInvalid.json"
      When Send request create new user
      Then Status code should be 201
      And Response body name should be "Samuel Pieter" and job id is ""
      And Validate Json Schema "CreateUserJsonSchema.json"