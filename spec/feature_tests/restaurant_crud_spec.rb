feature 'Restaurant creation' do
  scenario 'A user can add a new restaurant' do
    sign_up
    visit '/restaurants/new'
    fill_in 'restaurant[name]', with: "Test name"
    fill_in 'restaurant[location]', with: "Test location"
    fill_in 'restaurant[desc]', with: "Test description"
    click_on 'Save Restaurant'
    expect(page).to have_content "Test location"
  end

  scenario 'A user cannot add a new restaurant without a name' do
    create_a_restaurant(name: '', desc: "borger")
    visit '/'
    expect(page).to_not have_content("borger")
  end

  scenario 'A user cannot add a new restaurant without a description' do
    create_a_restaurant(name: "test", desc: '')
    visit '/'
    expect(page).to_not have_content("test")
  end

  scenario "A user can add a photo of the restaurant" do
    create_a_restaurant(name: "test", desc: 'borger', img: "https://pbs.twimg.com/media/CgldEYQU8AA2MPn.jpg")
    visit '/'
    expect(page).to have_xpath("//img[contains(@src,'https://pbs.twimg.com/media/CgldEYQU8AA2MPn.jpg')]")
  end
end

feature 'Restaurant deletion' do
  scenario 'A user can delete an existing restaurant' do
    sign_up
    create_a_restaurant
    visit '/restaurants/1'
    click_link('Destroy')
    expect(page).not_to have_content "location"
  end
end

feature 'Restaurant edit' do
  scenario 'A user can edit the details of a restaurant' do
    sign_up
    create_a_restaurant
    visit '/restaurants/1'
    click_link('Edit')
    fill_in 'restaurant[name]', with: "A different test name"
    click_on 'Update Restaurant'
    expect(page).to have_content "A different test name"
  end
end
