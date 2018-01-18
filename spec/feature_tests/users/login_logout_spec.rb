feature "Users" do
  scenario "after signing up a user can log out" do
    sign_up
    click_on("Log out")
    expect(page).to_not have_content("angery_man")
  end

  scenario "a user can login" do
    sign_up
    click_on('Log out')
    click_on('Log in')
    sign_in
    expect(page).to have_content("angery_man")
  end
end
