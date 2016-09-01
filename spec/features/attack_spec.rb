require 'spec_helper'

feature 'Attack' do

  scenario 'attacks player_2' do
    setup
    click_button('Attack!')
    expect(page).to have_content "Abi has attacked Rosie!"
  end
  
end
