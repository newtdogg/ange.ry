feature "Users" do
  scenario "after signing up a user can log out" do
    sign_up
    click_button("Log Out")
    expect(page).to_not have_content("Welcome angery_man")
  end

end
