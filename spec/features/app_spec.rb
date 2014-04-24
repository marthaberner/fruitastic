require 'spec_helper'

feature Fruitastic  do
  scenario 'User can create a fruit'do
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
  end
end