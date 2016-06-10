feature 'game over' do

  context 'when player 2 reaches 0HP first' do
    before do
      sign_in_and_play
      8.times do 
        click_button "ATTACK!!!"
        click_button "OK"
      end 
    end

    scenario 'player two loses' do
      click_button("ATTACK!!!")
      expect(page).to have_content "name2 loses!"
    end
  end
end
