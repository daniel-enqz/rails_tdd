require "rails_helper"

feature "User marks todo as incomplete" do
  scenario "successfully" do
    sign_in
    create_todo "Buy milk"

    click_on "Mark as done"
    click_on "Undo"

    expect(page).to display_todo "Buy milk", completed: false
  end
end


