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
end
