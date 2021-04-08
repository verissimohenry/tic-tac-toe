require './lib/game_logic'
require './bin/main'

describe GameLogic do
  let(:gl) { Game.new }
  let(:player1) { Player.new }
  let(:player2) { Player.new }
  let(:players) { [player1, player2] }
  describe '#initialize' do
    it 'checking setters and getters for player1 variable from Game class' do
      gl.player1 = player1
      expect(gl.player1).to eql(player1)
    end
    it 'checking setters and getters for player2 variable from Game class' do
      gl.player2 = player2
      expect(gl.player2).to eql(player2)
    end
    it 'checking setters and getters for players variable from Game class' do
      gl.players = players
      expect(gl.players).to eql(players)
    end
  end
  describe '#valid_name' do
    it 'checking valid name with digits' do
      expect(gl.valid_name('toyin')).to eql(false)
    end
    it 'checking valid name with symbols' do
      expect(gl.valid_name('henry/')).to eql(false)
    end
    it 'checking valid name with length <= 1' do
      expect(gl.valid_name('i')).to eql(false)
    end
    it 'checking valid name with digits and symbols' do
      expect(gl.valid_name('he/nry')).to eql(false)
    end
    it 'checking valid name' do
      expect(gl.valid_name('henry')).to eql(true)
    end
    it 'checking valid name' do
      expect(gl.valid_name('toyin')).to eql(true)
    end
  end
  describe '#main_part_logic' do
    it 'returns true because player henry has winner combination 1, 2, 3' do
      player.answers = [1, 2, 3]
      expect(gl.main_part_logic(player)).to be true
    end
    it 'returns true because player henry has winner combination 2, 5, 8' do
      player.answers = [2, 5, 3, 8]
      expect(gl.main_part_logic(player)).to be true
    end
    it 'returns true because player henry has winner combination 1, 5, 9' do
      player.answers = [1, 9, 5]
      expect(gl.main_part_logic(player)).to be true
    end
    it 'returns true because player henry has winner combination 7, 8, 9' do
      player.answers = [8, 7, 1, 9]
      expect(gl.main_part_logic(player)).to be true
    end
    it 'returns true because player henry has answers 4, 5, 6 and we have a winner' do
      player.answers = [1, 4, 6, 5]
      expect(gl.main_part_logic(player)).to be true
    end
    it 'returns true because player henry has answers 1, 4, 7 and we have a winner' do
      player.answers = [1, 4, 6, 7]
      expect(gl.main_part_logic(player)).to be true
    end
    it 'returns true because player henry has answers 2, 5, 8 and we have a winner' do
      player.answers = [8, 2, 5, 7]
      expect(gl.main_part_logic(player)).to be true
    end
    it 'returns true because player henry has answers 3, 6, 9 and we have a winner' do
      player.answers = [3, 2, 6, 9]
      expect(gl.main_part_logic(player)).to be true
    end
    it 'returns true because player henry has answers 3, 5, 7 and we have a winner' do
      player.answers = [7, 5, 3]
      expect(gl.main_part_logic(player)).to be true
    end
    it "returns true because player henry has 5 answers and it's a draw or ilie is loser, game is over" do
      player.answers = [1, 2, 4, 5, 9]
      expect(gl.main_part_logic(player)).to be true
    end
    it "returns false because player henry doesn't have enough answers" do
      player.answers = [5]
      expect(gl.main_part_logic(player)).to be false
    end
    it "returns false because player henry doesn't have enough answers" do
      player.answers = [5, 6]
      expect(gl.main_part_logic(player)).to be false
    end
  end
end
