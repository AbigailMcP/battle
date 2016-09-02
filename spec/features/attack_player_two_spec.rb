require 'spec_helper'

feature 'attack' do

  before(:each) do
    sign_in_and_play
  end

  scenario 'attacking player_two' do
    click_button 'Attack!'
    expect(page).to have_content 'Abi has been attacked!'
  end

  scenario 'page loads, initial hit points are displayed' do
    expect(page).to have_content('James: HP 100 Abi: HP 100')
  end

  scenario 'player one attacks player two' do
    click_button('Attack!')
    expect(page).to have_content('HP 90')
  end
end
