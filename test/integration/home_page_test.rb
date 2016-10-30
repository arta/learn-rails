require 'test_helper'

# RGB ... Role Goal Benefit
# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Home page' do

  # Gn Wn Tn .. GWeaT
  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit the home page' do
    visit root_path
    page.must_have_content 'Stay in touch'
  end
  # Typically we test a single feature with multiple scenarios in a single test file.
  # The `scenario` keyword is similar to the `it` keyword you’ve seen in unit tests.
end
