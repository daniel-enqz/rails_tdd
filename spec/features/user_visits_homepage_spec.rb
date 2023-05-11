require "rails_helper"


feature "User visits homepage" do
  scenario "successfully" do
    sign_in

    visit root_path

    expect(page).to have_css 'h1', text: 'Todos'
  end
end
