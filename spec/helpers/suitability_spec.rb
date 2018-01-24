describe Suitability do
  let!(:player) { FactoryBot.create(:player) }
  let!(:abilities) do FactoryBot.create(:abilities,
    player: player,
    crossing: 10,
    dribbling: 10
    )
  end
  let!(:role) do
    FactoryBot.create(:role,
      primary_attributes: [:crossing],
      secondary_attributes: [:dribbling]
    )
  end

  context "#determine" do
    it "returns a suitability score object" do
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.class.name).to eq 'SuitabilityScore'
    end

    it "returns the expected primary score for player and role" do
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.primary_score).to eq 10
    end

    it "returns the expected secondary score for player and role" do
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.secondary_score).to eq 5
    end
  end
end
