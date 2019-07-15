class Employee
    include HTTParty
    
    base_uri HOSTS['uri']

    def return_employees
        response = self.class.get(PATHS['employees'])
        parsed = JSON.parse(response.parsed_response)
    end

    def return_employee_by_id(id)
        response = self.class.get(PATHS['employee'] + id)
        parsed = JSON.parse(response.parsed_response)
    end

    def format_json_employee
        json = File.read('features/templates/post_create_employee.json')
        json_parsed = JSON.parse(json)
        json_parsed['name'] = Faker::Name.name
        payload = json_parsed.to_json
    end

    def create_employee(payload)
        response = self.class.post(PATHS['create'], body: payload)
        parsed = JSON.parse(response.parsed_response)
    end

    def delete_employee(id)
        self.class.delete(PATHS['delete'] + id)
    end
end