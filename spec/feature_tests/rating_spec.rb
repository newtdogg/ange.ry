feature 'Reviews' do
  scenario "a user can rate..." do
    visit '/ratings/new'
    find('#5').click
    fill_in('rating[review]', with: "wow nice")
    click_button('Save Rating')
    expect(page).to have_content('Rating: 5')
    expect(page).to have_content('Review: wow nice')
  end

end
