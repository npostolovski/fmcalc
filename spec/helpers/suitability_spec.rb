describe Suitability do
  let(:player) { FactoryBot.create(:player) }
  let(:attributes) { FactoryBot.create(:attributes, one_on_ones: 10, marking: 10) }
  let(:role) { FactoryBot.create(:role) }

  context "#determine" do
    it "calculates a relevant attributes score for the player" do
      expected_suitability_score = 15

      suitability = Suitability.new(player, role).calculate

      expect(suitability.score).to eq expected_suitability_score
    end
  end
end
