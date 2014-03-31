require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature "User can manage tasks" do
  scenario "User can add a task to the homepage" do
    visit '/'
    click_on "Add a task"
    fill_in "task", with: "Start triathlon training"
    click_on "Create task"
    expect(page).to have_content("Welcome")
    expect(page).to have_content("Start triathlon training")
  end
end