feature 'Restaurant creation' do
  scenario 'A user can add a new restaurant' do
    visit '/restaurants/new'
    fill_in 'restaurant[name]', with: "Test name"
    fill_in 'restaurant[location]', with: "Test location"
    fill_in 'restaurant[desc]', with: "Test description"
    click_on 'Save Restaurant'
    expect(page).to have_content "Test location"
  end
end
