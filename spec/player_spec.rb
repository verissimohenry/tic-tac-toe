require './lib/player_logic'

describe Player do
  let(:player) { Player.new }
  let(:name) { 'henry' }
  let(:symbol) { 'X' }
  let(:counter) { 3 }
  let(:answers) { [1, 2, 3] }
  let(:choice) { 9 }
  describe '#initialize' do
    it 'checking setters and getters for name' do
      player.name = 'henry'
      expect(player.name).to eql(name)
    end
    it 'checking setters and getters for answers' do
      player.answers = [1, 2, 3]
      expect(player.answers).to eql(answers)
    end
    it 'checking setters and getters for symbol' do
      player.symbol = 'X'
      expect(player.symbol).to eql(symbol)
    end
    it 'checking setters and getters for counter' do
      player.counter = 3
      expect(player.counter).to eql(counter)
    end
    it 'checking setters and getters for choice' do
      player.choice = 9
      expect(player.choice).to eql(choice)
    end
  end
end
