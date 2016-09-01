require 'spec_helper'

feature 'Attack' do

  scenario 'viewing points' do
    setup
    expect(page).to have_content 'Rosie: 100/100 HP'
  end

  scenario 'attack player' do
    setup
    click_button('Attack!')
    expect(page).to have_content "Abi has attacked Rosie!"
    expect(page).to have_content 'Rosie: 90/100 HP'
  end

end
