require 'rails_helper'

RSpec.feature "User can like or unlike a post", type: :feature do
  scenario "User can like a post" do
    user_sign_up
    fill_in "post_message", with: "Hello world!"
    click_button "Post"
    click_button "Like"
    expect(page).to have_content("1 Like")
  end

  scenario "User can unlike a post" do
    user_sign_up
    fill_in "post_message", with: "Hello world!"
    click_button "Post"
    click_button "Like"
    click_button "Unlike"
    expect(page).to have_content("0 Likes")
  end
end
