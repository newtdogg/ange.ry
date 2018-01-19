
def sign_up(username: "angery_man", email: "testemail@test.com", password: "test", password_confirmation: "test")
  visit '/users/new'
  fill_in('user[username]', with: username)
  fill_in('user[email]', with: email)
  fill_in('user[password]', with: password)
  fill_in('user[password_confirmation]', with: password_confirmation)
  click_button('Signup')
end

def create_a_restaurant(name: "name", location: "location", desc: "borger", img: "", user_id: 1)
  Restaurant.create(name: name, location: location, desc: desc, img: img, user_id: user_id)
end

def leave_a_review(stars: 5, rating: 'A generic review')
  fill_in('rating[review]', with: rating)
  find("##{stars}").click
  click_button('Save Rating')
end


def sign_in(username: "angery_man", password: "test")
  fill_in('session[username]', with: username)
  fill_in('session[password]', with: password)
  click_button("Log in")
end
