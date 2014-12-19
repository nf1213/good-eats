require 'rails_helper'

feature 'User creates restaurant' do
  # name, address, city, state, and zip code
  r = Restaurant.new(name: "Food3", city: "Space Boston", address: '123 street road', state: 'MA', zip: '12345')

  scenario 'Fills out a form with valid attribures' do
    visit restaurants_path
    click_on 'New Restaurant'
    fill_in "Name", with: r.name
    fill_in "Address", with: r.address
    fill_in "City", with: r.city
    fill_in "State", with: r.state
    fill_in "Zip", with: r.zip

    click_on "Create Restaurant"

    expect(page).to have_content "Restaurant was successfully created."

    save_and_open_page
  end

  scenario 'Gets errors if they fill out a form wrong' do
    visit new_restaurant_path

    click_on "Create Restaurant"

    expect(page).to have_content "Address can't be blank"
  end

end
