require 'rails_helper'

feature 'User visits homepage' do
  # name, address, city, state, and zip code
  restaurant = Restaurant.create(name: "Food", city: "Space Boston", address: '123 street road', state: 'MA', zip: '12345')

  scenario 'Sees the title of the website' do
    visit restaurants_path
    expect(page).to have_content 'ALL THE RESTAURANTS'
  end

  scenario 'Sees the names of the restaurants' do
    visit restaurants_path
    name = restaurant.name
    expect(page).to have_content name
  end

end
