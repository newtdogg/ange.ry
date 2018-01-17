
def sign_up(username: "angery_man", email: "testemail@test.com", password: "test", password_confirmation: "test")
  fill_in('user[username]', with: username)
  fill_in('user[email]', with: email)
  fill_in('user[password]', with: password)
  fill_in('user[password_confirmation]', with: password_confirmation)
  click_button('Signup')
end

def create_a_restaurant(name: "name", location: "location", desc: "borger")
  Restaurant.create(name: name, location: location, desc: desc)
end

def leave_a_review(stars: 5, rating: 'A generic review')
  fill_in('rating[review]', with: rating)
  find("##{stars}").click
  click_button('Save Rating')
end
