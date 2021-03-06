require 'spec_helper'

feature 'Cars' do
  scenario 'User can add a car' do
    visit '/'

    click_link 'Cars'
    fill_in 'car[model]', with: 'Prius'
    fill_in 'car[year]', with: '2012'
    click_on 'Add Car'

    expect(page).to have_content 'Prius'
    expect(page).to have_content '2012'

    click_link 'Prius'
    expect(page).to have_content 'Prius'
    expect(page).to have_content '2012'

    click_link 'Edit'

    fill_in 'car[model]', with: 'Mercedes-Benz'
    click_on 'Update'
    expect(page).to have_no_content 'Prius'
    expect(page).to have_content '2012'

    click_link 'Delete'

    expect(page).to have_no_content 'Mercedes-Benz'
    expect(page).to have_content 'Cars'

  end
end