require 'spec_helper'

feature Fruitastic do
  scenario 'User can create a fruit' do
    visit '/'

    click_link "Create Fruit"
    fill_in "name", with: "apple"
    fill_in "description", with: "red"
    click_on "Create Fruit"

    expect(page).to have_content "apple"

    ## User can click on a fruit for more info

    click_on "apple"

    expect(page).to have_content "apple"
    expect(page).to have_content "red"

    ## User can update fruit details

    click_link "Edit"

    fill_in "Fruit Name", with: "star fruit"
    fill_in "Fruit Description", with: "purple"
    click_on "Update Fruit"

    expect(page).to have_content "star fruit"
    expect(page).to have_content "purple"

  end
end