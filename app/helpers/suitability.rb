class Suitability
  attr_accessor :player, :role

  def initialize(player, role)
    @player = player
    @role = role
  end

  def calculate
    SuitabilityScore.new
  end
end
