require 'spec_helper'

feature 'Managing Bikes' do
  scenario 'user can add, update, and delete a bike' do
    Bike.create!(name: 'a bike', year: '1989')
    Bike.create!(name: 'another bike', year: '1988')

    visit bikes_path

    expect(page).to have_content 'a bike'
    expect(page).to have_content '1989'

    expect(page).to have_content 'another bike'
    expect(page).to have_content '1988'

    fill_in 'Name', with: 'Huffy'
    fill_in 'Year', with: '1976'
    click_on 'Add Bike'

    expect(page).to have_content 'Huffy'
    expect(page).to have_content '1976'

    click_on 'Edit'
    fill_in 'Name', with: 'Schwinn'
    fill_in 'Year', with: '1990'
    click_on 'Update'

    expect(page).to have_content 'Schwinn'
    expect(page).to have_content '1990'

    click_on 'Delete'

    expect(page).to have_no_content 'Schwinn'
    expect(page).to have_no_content '1990'

  end
end