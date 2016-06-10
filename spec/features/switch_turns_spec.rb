require 'spec_helper'

describe 'Switch turns' do

  context 'seeing the current turn' do

  	scenario 'at the start of the game' do
  		sign_in_and_play
  		expect(page).to have_content "name1's turn"
  	end

  	scenario 'after player_1 attacks' do
  		sign_in_and_play
  		attack_and_confirm
      expect(page).not_to have_content "name1's turn"
      expect(page).to have_content "name2's turn"
  	end

  end

end