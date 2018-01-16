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

feature 'Restaurant deletion' do
  scenario 'A user can delete an existing restaurant' do
    visit '/restaurants/new'
    fill_in 'restaurant[name]', with: "Test name"
    fill_in 'restaurant[location]', with: "Test location"
    fill_in 'restaurant[desc]', with: "Test description"
    click_on 'Save Restaurant'
    visit '/restaurants'
    click_link('Destroy')
    expect(page).not_to have_content "Test location"
  end
end

feature 'Restaurant edit' do
  scenario 'A user can edit the details of a restaurant' do
    visit '/restaurants/new'
    fill_in 'restaurant[name]', with: "Test name"
    fill_in 'restaurant[location]', with: "Test location"
    fill_in 'restaurant[desc]', with: "Test description"
    click_on 'Save Restaurant'
    click_link('Edit')
    fill_in 'restaurant[name]', with: "A different test name"
    click_on 'Update Restaurant'
    expect(page).to have_content "A different test name" 
  end
end
