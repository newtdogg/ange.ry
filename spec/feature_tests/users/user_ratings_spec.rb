feature "User ratings" do
  scenario "a user can view all of their ratings" do
    sign_up
    create_a_restaurant
    visit("/restaurants/1/ratings/new")
    leave_a_review
    visit("/users/1")
    expect(page).to have_content("Review: A generic review")
  end

  scenario "A user cannot rate the same restaurant twice" do
    sign_up
    create_a_restaurant
    visit("/restaurants/1/ratings/new")
    leave_a_review
    visit("/restaurants/1/ratings/new")
    leave_a_review
    expect(page).to have_current_path("/restaurants/1")
  end

  scenario "A user can only edit their own review" do
    sign_up
    create_a_restaurant
    visit("/restaurants/1/ratings/new")
    leave_a_review
    visit("/users/1")
    expect(page).to have_content('Edit')
    sign_up("angery_man4", "testemail@aol.com", "testing", "testing")
    visit("/restaurants/1/ratings")
    expect(page).to_not have_content('Edit')
  end
end
