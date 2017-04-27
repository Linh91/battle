require 'player'

describe Player do
  subject(:hulk) {Player.new("Hulk")}
  subject(:goldberg) {Player.new("Goldberg")}

  describe '#name' do
    it 'returns name' do
      expect(hulk.name).to eq "Hulk"
    end

    describe '#hit_points' do
      it 'show players HP' do
        expect(hulk.hit_points).to eq Player::DEFAULT_HP
      end
    end

    describe '#attack' do
      it 'player one attacks player two' do
        expect(goldberg).to receive(:receive_attack)
        hulk.attack(goldberg)
      end
    end

    describe '#receive_attack' do
      it 'attack reduces HP points' do
        expect { goldberg.receive_attack }.to change { goldberg.hit_points }.by (-10)
      end
    end
  end
end
