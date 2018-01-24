class Suitability
  attr_accessor :player, :role

  def initialize(player, role)
    @player = player
    @role = role
  end

  def determine
    primary_attributes_for_player = role.primary_attributes.map do |attribute|
      player.abilities.send(attribute)
    end

    secondary_attributes_for_player = role.secondary_attributes.map do |attribute|
      player.abilities.send(attribute)
    end

    SuitabilityScore.create(
      player: player,
      role: role,
      primary_score: primary_attributes_for_player.sum,
      secondary_score: secondary_attributes_for_player.sum / 2
    )
  end
end
