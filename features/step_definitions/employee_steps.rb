Given("I have a user created") do
    @employee = @page.(Employee).create_employee
end

Given("I delete a existent employee") do
    steps %{
        Given I have a user created
        When I search the employee created by id
        Then I must see the employee
    }
    @deleted = @page.(Employee).delete_employee(@employee['id'])
end
  
When("I search the employee created by id") do
    @employee_created = @page.(Employee).return_employee_by_id(@employee['id'])
end

When("I search the employee deleted by id") do
    @employee_deleted = @page.(Employee).return_employee_by_id(@employee['id'])
end
  
Then("I must see the employee") do
    expect(@employee['id']).to eq @employee_created['id']
end

Then("I must not see the employee") do
    expect(@employee_deleted).to be false
end