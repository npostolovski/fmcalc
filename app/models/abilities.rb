require_all 'app/models'

class Abilities < ApplicationRecord
  belongs_to :player
end
