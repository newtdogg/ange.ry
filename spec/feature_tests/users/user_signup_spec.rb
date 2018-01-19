feature "Users" do
  scenario "a user can sign up to review" do
    visit('/users/new')
    sign_up()
    expect(page).to have_content("angery_man")
  end

  scenario "a user cannot sign up with missmatching passwords" do
    visit('/users/new')
    sign_up(password_confirmation: '54321')
    expect(page).to_not have_content("Welcome angery_man")
  end

  scenario "a user cannot sign up an invalid email" do
    visit('/users/new')
    sign_up(email: "12313541")
    expect(page).to_not have_content("Welcome angery_man")
  end

  scenario "A user cannot sign up with a missing username" do
    visit('users/new')
    sign_up(username: "")
    expect(page).to_not have_content("Welcome angery_man")
  end

  scenario "A user cannot sign up with a missing email" do
    visit('users/new')
    sign_up(email: "")
    expect(page).to_not have_content("Welcome angery_man")
  end

  scenario "A user cannot sign up with a missing password" do
    visit('users/new')
    sign_up(password: "")
    expect(page).to_not have_content("Welcome angery_man")
  end

  scenario "A user cannot sign up with an existing username" do
    visit('users/new')
    sign_up()
    visit('users/new')
    sign_up(email: "different@email.com")
    expect(page).to have_button('Signup')
  end

  scenario "A user cannot sign up with an existing email" do
    visit('users/new')
    sign_up()
    visit('users/new')
    sign_up(username: "testuser")
    expect(page).to_not have_content("Welcome testuser")
  end
end
