describe Suitability do
  let!(:player) { FactoryBot.create(:player) }
  let!(:abilities) do FactoryBot.create(:abilities,
    player: player,
    one_on_ones: 7,
    acceleration: 11,
    aerial_ability: 9,
    agility: 8,
    anticipation: 12,
    bravery: 10,
    balance: 9,
    command_of_area: 7,
    composure: 6,
    communication: 12,
    corners: 6,
    concentration: 3,
    crossing: 9,
    decisions: 1,
    determination: 10,
    dribbling: 12,
    eccentricity: 2,
    finishing: 11,
    first_touch: 2,
    flair: 4,
    free_kicks: 3,
    handling: 5,
    heading: 10,
    jumping_reach: 1,
    kicking: 9,
    leadership: 9,
    long_shots: 4,
    long_throws: 1,
    marking: 1,
    natural_fitness: 2,
    off_the_ball: 8,
    passing: 1,
    pace: 7,
    positioning: 14,
    punching: 13,
    reflexes: 10,
    rushing_out: 9,
    stamina: 10,
    strength: 8,
    tackling: 6,
    teamwork: 1,
    technique: 5,
    throwing: 7,
    vision: 8,
    workrate: 8,
    aggression: 8)
  end

  let(:goalkeeper_primary_attributes) do
    [
      :aerial_ability,
      :command_of_area,
      :communication,
      :handling,
      :kicking,
      :reflexes,
      :positioning,
      :agility,
      :jumping_reach
    ]
  end

  let(:goalkeeper_secondary_attributes) do
    [
      :first_touch,
      :one_on_ones,
      :throwing,
      :anticipation,
      :decisions,
      :determination,
      :strength
    ]
  end

  let!(:role) do
    FactoryBot.create(:role,
      name: "Goalkeeper",
      primary_attributes: goalkeeper_primary_attributes,
      secondary_attributes: goalkeeper_secondary_attributes
    )
  end

  context "#determine" do
    it "returns a suitability score object" do
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.class.name).to eq 'SuitabilityScore'
      expect(suitability_score.persisted?).to eq true
    end

    it "returns the expected primary score for player and role" do
      expected_primary_score = 75
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.primary_score).to eq expected_primary_score
    end

    it "returns the expected secondary score for player and role" do
      expected_secondary_score = 23.5
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.secondary_score).to eq expected_secondary_score
    end

    it "returns the expected total score" do
      expected_total_score = 98.5
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.total_score).to eq expected_total_score
    end

    it "returns the expected average primary score" do
      expected_average_primary_score = 8.33
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.average_primary).to eq expected_average_primary_score
    end

    it "returns the expected average secondary score" do
      expected_average_secondary_score = 6.71
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.average_secondary).to eq expected_average_secondary_score
    end

    it "returns the expected total average" do
      expected_total_average = 7.52
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.total_average).to eq expected_total_average
    end

    it "returns a percent_primary score" do
      expected_percentage_primary = 41.67

      suitability_score = Suitability.new(player, role).determine
      expect(suitability_score.percentage_primary).to eq expected_percentage_primary
    end
  end
end
