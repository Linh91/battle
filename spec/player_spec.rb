require 'player'

describe Player do
  describe '#name' do
    it 'returns name' do
      player_one = Player.new("Dave")
      expect(player_one.name).to eq "Dave"
    end
  end
end
