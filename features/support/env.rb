require 'bundler/setup'
require 'capybara/cucumber'
require 'rspec/expectations'
require_relative '../../sinatra/app'

Capybara.default_driver = :selenium
#Capybara.default_driver = :rack_test #Use this when looking at the examples in chapter 3 and compare it with using Selenium!

Capybara.default_wait_time = 20 #set a very high timeout for some of our extreme examples

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.app = BookReview #our Sinatra app
