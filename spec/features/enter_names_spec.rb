require 'spec_helper'

feature 'Enter names' do

  scenario 'submitting names' do
    setup
    expect(page).to have_content 'Abi vs. Rosie'
  end

end
