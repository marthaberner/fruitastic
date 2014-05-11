require 'spec_helper'

feature 'Managing Bugs' do
  scenario 'user can add a bug' do
    visit '/'

    click_link 'Add Bugs'

    fill_in 'Bug Name', with: 'butterfly'
    fill_in 'Color', with: 'red'
    click_on 'Add Bug'

    expect(page).to have_content 'butterfly'
    expect(page).to have_content 'red'

    click_link 'Edit'
    fill_in 'Color', with: 'Green'
    click_on 'Update'

    expect(page).to have_content 'butterfly'
    expect(page).to have_content 'Green'
    expect(page).to have_no_content 'red'
  end
end