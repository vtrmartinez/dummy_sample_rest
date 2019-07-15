Feature: Employee

@wip
Scenario: Create employee
    Given I have a user created
    When I search the employee created by id
    Then I must see the employee

Scenario: Delete employee
    Given I delete a employee


