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

    SuitabilityScore.create(
      primary_score: primary_attributes_for_player.sum
    )
  end
end
