describe Suitability do
  let!(:player) { FactoryBot.create(:player) }
  let!(:abilities) do FactoryBot.create(:abilities,
    player: player,
    one_on_ones: 7,
    acceleration: 11,
    aerial_ability: 9,
    agility: 12,
    anticipation: 10,
    bravery: 7,
    balance: 9,
    command_of_area: 6,
    composure: 12,
    communication: 6,
    corners: 3,
    concentration: 9,
    crossing: 1,
    decisions: 10,
    determination: 12,
    dribbling: 2,
    eccentricity: 11,
    finishing: 2,
    first_touch: 4,
    flair: 3,
    free_kicks: 5,
    handling: 10,
    heading: 1,
    jumping_reach: 9,
    kicking: 9,
    leadership: 4,
    long_shots: 1,
    long_throws: 1,
    marking: 2,
    natural_fitness: 8,
    off_the_ball: 1,
    passing: 7,
    pace: 14,
    positioning: 13,
    punching: 10,
    reflexes: 9,
    rushing_out: 10,
    stamina: 8,
    strength: 6,
    tackling: 1,
    teamwork: 9,
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
      expected_primary_score = 83.00
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.primary_score).to eq expected_primary_score
    end

    it "returns the expected secondary score for player and role" do
      expected_secondary_score = 56.00
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.secondary_score).to eq expected_secondary_score
    end

    it "returns the expected total score" do
      expected_total_score = 111.00
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.total_score).to eq expected_total_score
    end

    it "returns the expected average primary score" do
      expected_average_primary_score = 9.22
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.average_primary).to eq expected_average_primary_score
    end

    it "returns the expected average secondary score" do
      expected_average_secondary_score = 8.00
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.average_secondary).to eq expected_average_secondary_score
    end

    it "returns the expected total average" do
      expected_total_average = 8.61
      suitability_score = Suitability.new(player, role).determine

      expect(suitability_score.total_average).to eq expected_total_average
    end

    it "returns a percentage_primary score" do
      expected_percentage_primary = 46.11

      suitability_score = Suitability.new(player, role).determine
      expect(suitability_score.percentage_primary).to eq expected_percentage_primary
    end

    it "returns a percentage_secondary score" do
      expected_percentage_secondary = 40.00

      suitability_score = Suitability.new(player, role).determine
      expect(suitability_score.percentage_secondary).to eq expected_percentage_secondary
    end

    it "returns an overall suitability rating" do
      expected_suitability_rating = 44.07

      suitability_score = Suitability.new(player, role).determine
      expect(suitability_score.suitability_rating).to eq expected_suitability_rating
    end
  end
end
