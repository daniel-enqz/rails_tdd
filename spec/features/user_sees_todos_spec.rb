require "rails_helper"

feature "User sees todos" do
  scenario "User does not see others' todos" do
    Todo.create!(title: "Plan party", email: "other_person@example.com")

    sign_in_as "person@example.com"

    expect(page).not_to display_todo "Plan party"
  end
end
  
