feature 'Reviews' do

  before :each do
    create_a_restaurant
  end

  scenario "a user can rate 5 stars..." do
    sign_up
    visit 'restaurants/1/ratings/new'
    leave_a_review(stars: 5, rating: 'wow real nice')
    expect(page).to have_content('Rating: 5')
    expect(page).to have_content('Review: wow real nice')
  end
  scenario "a user can rate 4 stars..." do
    sign_up
    visit 'restaurants/1/ratings/new'
    leave_a_review(stars: 4, rating: 'wow nice')
    expect(page).to have_content('Rating: 4')
    expect(page).to have_content('Review: wow nice')
  end
  scenario "a user can rate 3 stars..." do
    sign_up
    visit 'restaurants/1/ratings/new'
    leave_a_review(stars: 3, rating: 'wow kinda nice')
    expect(page).to have_content('Rating: 3')
    expect(page).to have_content('Review: wow kinda nice')
  end
  scenario "a user can rate 2 stars..." do
    sign_up
    visit 'restaurants/1/ratings/new'
    leave_a_review(stars: 2, rating: 'wow not nice')
    expect(page).to have_content('Rating: 2')
    expect(page).to have_content('Review: wow not nice')
  end
  scenario "a user can rate 1 stars..." do
    sign_up
    visit 'restaurants/1/ratings/new'
    leave_a_review(stars: 1, rating: 'wow really not nice')
    expect(page).to have_content('Rating: 1')
    expect(page).to have_content('Review: wow really not nice')
  end

  scenario 'A user cannot leave a blank rating' do
    sign_up
    visit 'restaurants/1/ratings/new'
    fill_in('rating[review]', with: "A rating")
    click_button('Save Rating')
    expect(page).to have_button('Save Rating')
  end

  scenario "Username is displayed with review" do
    sign_up
    visit 'restaurants/1/ratings/new'
    leave_a_review(stars: 1, rating: 'wow really not nice')
    expect(page).to have_content('Review by: angery_man')
    expect(page).to have_content('Rating: 1')
    expect(page).to have_content('Review: wow really not nice')
  end
end
