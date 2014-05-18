require 'spec_helper'

feature 'Songs Manager' do
  scenario 'User can add a song and an other' do
    visit '/'

    click_link 'Songs'
    fill_in 'song[title]', with: 'I Love Rock n Roll'
    fill_in 'song[artist]', with: 'Joan Jett'
    click_on 'Add Song'

    expect(page).to have_content 'I Love Rock n Roll'
    expect(page).to have_content 'Joan Jett'
  end

  scenario 'User can show details of individual song' do
    visit '/'

    click_link 'Songs'
    fill_in 'song[title]', with: 'I Love Rock n Roll'
    fill_in 'song[artist]', with: 'Joan Jett'
    click_on 'Add Song'

    click_link 'Joan Jett'

    expect(page).to have_content 'Joan Jett'
    expect(page).to have_content 'I Love Rock n Roll'

    click_link 'Edit'
    fill_in 'song[title]', with: 'Cherry Bomb'
    click_on 'Update'

    expect(page).to have_content 'Cherry Bomb'
    expect(page).to have_no_content 'I Love Rock n Roll'
  end
end