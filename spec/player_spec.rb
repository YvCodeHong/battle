require_relative '../lib/player.rb'

describe Player do
  subject(:yvonne) {described_class.new('Yvonne')}
  subject(:kees) {described_class.new('Kees')}

  describe "#name" do
    it 'return name' do
      expect(yvonne.name).to eq "Yvonne"
    end
  end

  describe "#attack" do
    it 'Player2 damage' do
      expect(yvonne).to receive(:receive_damage)
      kees.attack(yvonne)
    end
  end

  describe "#receive_damage" do
    it 'reduce Player2 HP by 10' do
      expect{ yvonne.receive_damage }.to change { yvonne.hit_points }.by(-10)
  end
end

  describe "#hit_points" do
    it 'return the hit points'do
      expect(yvonne.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
end
