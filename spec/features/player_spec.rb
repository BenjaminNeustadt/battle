require 'player'

describe Player do
  subject(:slayer) { Player.new('Slayer') }
  subject(:dragon) { Player.new('Dragon') }

  describe '#name' do
    it 'returns the name' do
      expect(slayer.name).to eq 'Slayer'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(slayer.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(dragon).to receive(:receive_damage)
      dragon.attack(dragon)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { slayer.receive_damage }.to change { slayer.hit_points }.by(-10)
    end
  end
  
end