require 'spec_helper'

feature 'View hit points' do

  scenario 'viewing points' do
    setup
    expect(page).to have_content 'Rosie: 0/100 HP'
  end

end
