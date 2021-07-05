require 'rails_helper'
feature "post message" do
    scenario "successfully post message if message is not blank " do
      visit "/messages"
      fill_in "message_message_text", with: "hahahahahahahahahhahaahahdadadaaadadadadadaadadadadadadadad"
      # fill_in "message_user_id", with: 3
      create(:message,user:build(:user))
      click_button "Post a Message"
      # expect(page).to have_current_path("/messages") 
      expect(page).to have_content "Message post successful"
    end

    scenario "unsuccessfully creates a new message" do
      visit "/messages"
      fill_in "message_message_text", with: "short"
      create(:message,user:build(:user))
      click_button "Post a Message"
      expect(page).to have_content "Message is too short (minimum is 10 characters)"
    end

    
  end