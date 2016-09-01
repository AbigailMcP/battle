def setup
  visit('/')
  fill_in :player_1_name, with: 'Abi'
  fill_in :player_2_name, with: 'Rosie'
  click_button 'BATTLE!'
end
