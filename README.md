# dummy_sample_rest
REST automation using Ruby and Httparty

<br>


## Clone the project

Given git has been installed, execute the command:
```
git clone https://github.com/Kenoby-Labs/kenoby-aut-api.git
```

<br>

### Requirements

Install some Ruby versioner:

#### RBENV:
```
https://github.com/rbenv/rbenv
```

#### RVM:
```
https://rvm.io/
```

<br>

### Install Ruby

Now, using the versioner commands, install the version 2.5.3 of ruby.


### Installation

Installing the bundle

```
$ gem install bundler
```

Inside the project folder, execute the command:

```
$ bundle install
```
# Run the tests

```
$ cucumber
```

<br>

# Tags

We use the tags to run some specific group of test scenarios. We use the syntax " -t @tag_name"

Example:

```
$ cucumber -t @employees
```

#### All Tags
```
@employees           - Run all the scenarios of employee
@create_employee     - Run the scenario to create an employee
@delete_employee     - Run the scenario to delete an employee
```