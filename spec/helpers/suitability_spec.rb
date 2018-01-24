describe Suitability do
  let(:player) { FactoryBot.create(:player) }
  let(:attributes) { FactoryBot.create(:attributes, one_on_ones: 10, marking: 10) }
  let(:role) { FactoryBot.create(:role) }

  context "#determine" do
    it "returns a suitability score object" do
      suitability = Suitability.new(player, role).calculate

      expect(suitability.class.name).to eq 'SuitabilityScore'
    end
  end
end
