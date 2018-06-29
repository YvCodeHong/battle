require_relative '../lib/player.rb'

describe Player do
  subject(:yvonne) {described_class.new('Yvonne')}
  describe "#name" do
    it 'return name' do
      expect(yvonne.name).to eq "Yvonne"
    end
  end
end
