
def sign_up(username, email, password, password_confirmation)
  fill_in('user[username]', with: username)
  fill_in('user[email]', with: email)
  fill_in('user[password]', with: password)
  fill_in('user[password_confirmation]', with: password_confirmation)
  click_button('Signup')
end
