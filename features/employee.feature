@employee
Feature: Employee

@create_employee
Scenario: Create employee
    Given I have a user created
    When I search the employee created by id
    Then I must see the employee

@delete_employee
Scenario: Delete employee
    Given I delete a existent employee
    When I search the employee deleted by id
    Then I must not see the employee




