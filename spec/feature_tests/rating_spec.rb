feature 'Viewing links by tag' do
  scenario "should filter links by tags" do
    visit '/ratings/new'
    find('#5').click
    fill_in('rating[review]', with: "wow nice")
    click_button('Save Rating')
    expect(page).to have_content('Rating: 5')
    expect(page).to have_content('Review: wow nice')
  end
end
