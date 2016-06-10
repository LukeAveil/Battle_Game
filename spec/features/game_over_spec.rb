feature 'game over' do

  context 'when player 1 rached 0HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'player one loses' do
      click_button("ATTACK!!!")
      expect(page).to have_content "name1 loses"
    end

  end

end
