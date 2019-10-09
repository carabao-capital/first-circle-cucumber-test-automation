Feature: FCA customer login
    Tests customer login on FCA

    Scenario: As a customer I want to login with valid credentials
        Given Customer loads FCA login page in "environment"
        When Customer submits valid login credentials
        Then Customer should be successfully logged in FCA