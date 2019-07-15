require 'pry'
require 'rspec'
require 'httparty'
require 'byebug'
require 'faker'

PATHS = YAML.load_file('config/paths.yml')
HOSTS = YAML.load_file('config/hosts.yml')

page = lambda {|klass| klass.new}

Before do
  @page = page
end