class Suitability
  SECONDARY_ATTRIBUTES_MODIFIER = 0.5

  attr_accessor :player, :role

  def initialize(player, role)
    @player = player
    @role = role
  end

  def determine
    SuitabilityScore.create(
      player: player,
      role: role,
      primary_score: relevant_attribute_score(:primary_attributes),
      secondary_score: relevant_attribute_score(:secondary_attributes)
    )
  end

  private

  def relevant_attribute_score(primary_or_secondary_attributes)
    scores = calculate_scores(primary_or_secondary_attributes)
    if primary_or_secondary_attributes == :secondary_attributes
      scores = scores * SECONDARY_ATTRIBUTES_MODIFIER
    end
    scores
  end

  def calculate_scores(primary_or_secondary_attributes)
    role.send(primary_or_secondary_attributes).inject(0) do |sum, attr|
      player.abilities.send(attr)
    end
  end
end
