Given("I have a user created") do
    @employee = @page.(Employee).create_employee
end
  
When("I search the employee created by id") do
    @employee_created = @page.(Employee).return_employee_by_id(@employee['id'])
end
  
Then("I must see the employee") do
    expect(@employee['id']).to eq @employee_created['id']
end
