require 'rails_helper'
feature "login user" do
  scenario "successfully login user using their username" do
    visit new_user_path
    fill_in "user_username", with: "lordyjane"
    click_button "Sign In"
  #   visit "/messages"
    expect(page).to have_content "User successfully login"
  end
end

feature "logout user" do
  scenario "successful logout of user" do
    visit "/messages"
    click_button "Logout"
    expect(page).to have_current_path(new_user_path)
  end
end