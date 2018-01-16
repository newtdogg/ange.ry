feature "Users" do
  scenario "a user can sign up to review" do
    visit('/users/new')
    fill_in('user[username]', with: "angery_man")
    fill_in('user[email]', with: "angery_man@aol.com")
    fill_in('user[password]', with: "12345")
    fill_in('user[password_confirmation]', with: "12345")
    click_button('Signup')
    expect(page).to have_content("Welcome angery_man")
  end
end
