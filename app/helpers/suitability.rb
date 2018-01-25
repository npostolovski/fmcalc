class Suitability
  SECONDARY_ATTRIBUTES_MODIFIER = 0.5

  attr_accessor :player, :role, :primary_total, :secondary_total, :average_primary, :average_secondary

  def initialize(player, role)
    @player = player
    @role = role
    @primary_total ||= relevant_attribute_score(:primary_attributes)
    @secondary_total ||= relevant_attribute_score(:secondary_attributes)
    @average_primary ||= average_primary_score
    @average_secondary ||= average_secondary_score
  end

  def determine
    suitability_score = SuitabilityScore.create(
      player: player,
      role: role,
      primary_score: primary_total,
      secondary_score: secondary_total,
      total_score: primary_total + secondary_total,
      average_primary: average_primary,
      average_secondary: average_secondary,
      total_average: total_average_score
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
    role.send(primary_or_secondary_attributes).map do |attr|
      player.abilities.send(attr)
    end.sum
  end

  def average_primary_score
    (primary_total / role.primary_attributes.count).round(2)
  end

  def average_secondary_score
    unmodified_secondary_total = secondary_total / SECONDARY_ATTRIBUTES_MODIFIER
    (unmodified_secondary_total / role.secondary_attributes.count).round(2)
  end

  def total_average_score
    ((average_primary + average_secondary) / 2).round(2)
  end
end
