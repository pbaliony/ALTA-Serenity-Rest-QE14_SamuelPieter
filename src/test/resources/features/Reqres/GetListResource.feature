@Tugas
  Feature: Get List <Resource>

    Scenario: Get List of resource
      Given Get List resource with valid parameter 7
      When Send request get list resource
      Then Status Code should be 200
      And Validate Json Schema "ListResourceJsonSchema.json"

    Scenario: Get List of resource
      Given Get List resource with invalid parameter 23
      When Send request get list resource
      Then Status Code should be 404