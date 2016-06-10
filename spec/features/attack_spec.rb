require 'spec_helper'

feature "attacking players" do
  scenario "player 1 is attacking player 2" do
    sign_in_and_play
    click_button 'ATTACK!!!'
    expect(page).to have_content "name1 attacks name2"
  end

  scenario "reduce Player 2 HP by 10" do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content "name2: 50HP"
    expect(page).to have_content "name2: 40HP"
  end

  scenario "reduce Player 1 HP by 10" do
    sign_in_and_play
    2.times { attack_and_confirm }
    expect(page).not_to have_content "name1: 50HP"
    expect(page).to have_content "name1: 40HP"
  end
end
