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
      expected_primary_score = 10
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.primary_score).to eq expected_primary_score
    end

    it "returns the expected secondary score for player and role" do
      expected_secondary_score = 5
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.secondary_score).to eq expected_secondary_score
    end

    it "returns the expected total score" do
      expected_total_score = 15
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.total_score).to eq expected_total_score
    end

    it "returns the expected average primary score" do
      expected_average_primary_score = 10
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.average_primary).to eq expected_average_primary_score
    end

    it "returns the expected average secondary score" do
      expected_average_secondary_score = 10
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.average_secondary).to eq expected_average_secondary_score
    end

    it "returns the expected total average" do
      expected_total_average = 10
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.total_average).to eq expected_total_average
    end
  end
end
