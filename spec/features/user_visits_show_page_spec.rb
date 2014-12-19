require 'rails_helper'

feature 'User visits show page' do

  r = Restaurant.create(name: "Food2", city: "Space Boston", address: '123 street road', state: 'MA', zip: '12345')

  scenario 'Sees details of restaurant' do
    visit restaurants_path
    click_on "Food2"
    expect(page).to have_content "City: #{r.city}"
  end

end
