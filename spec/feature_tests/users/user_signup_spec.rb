feature "Users" do
  scenario "a user can sign up to review" do
    visit('/users/new')
    sign_up("angery_man", "angery_man@aol.com", "12345", "12345")
    expect(page).to have_content("Welcome angery_man")
  end

  scenario "a user cannot sign up with missmatching passwords" do
    visit('/users/new')
    sign_up("angery_man", "angery_man@aol.com", "12345", "54321")
    expect(page).to_not have_content("Welcome angery_man")
  end

  scenario "a user cannot sign up an invalid email" do
    visit('/users/new')
    sign_up("angery_man", "angery_madgasfg", "12345", "54321")
    expect(page).to_not have_content("Welcome angery_man")
  end
end
