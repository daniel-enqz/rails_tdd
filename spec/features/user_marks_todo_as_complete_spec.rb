require "rails_helper"


feature "User marks todo as complete" do
  scenario "successfully" do
    sign_in
    create_todo "Buy milk"

    click_on "Mark as done"

    expect(page).to display_todo "Buy milk", completed: true
  end
end
