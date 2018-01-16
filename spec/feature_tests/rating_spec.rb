feature 'Reviews' do
  scenario "a user can rate 5 stars..." do
    visit '/ratings/new'
    find('#5').click
    fill_in('rating[review]', with: "wow real nice")
    click_button('Save Rating')
    expect(page).to have_content('Rating: 5')
    expect(page).to have_content('Review: wow real nice')
  end
  scenario "a user can rate 4 stars..." do
    visit '/ratings/new'
    find('#4').click
    fill_in('rating[review]', with: "wow nice")
    click_button('Save Rating')
    expect(page).to have_content('Rating: 4')
    expect(page).to have_content('Review: wow nice')
  end
  scenario "a user can rate 3 stars..." do
    visit '/ratings/new'
    find('#3').click
    fill_in('rating[review]', with: "wow kinda nice")
    click_button('Save Rating')
    expect(page).to have_content('Rating: 3')
    expect(page).to have_content('Review: wow kinda nice')
  end
  scenario "a user can rate 2 stars..." do
    visit '/ratings/new'
    find('#2').click
    fill_in('rating[review]', with: "wow not nice")
    click_button('Save Rating')
    expect(page).to have_content('Rating: 2')
    expect(page).to have_content('Review: wow not nice')
  end
  scenario "a user can rate 1 stars..." do
    visit '/ratings/new'
    find('#1').click
    fill_in('rating[review]', with: "wow really not nice")
    click_button('Save Rating')
    expect(page).to have_content('Rating: 1')
    expect(page).to have_content('Review: wow really not nice')
  end

end
