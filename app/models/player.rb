require_all 'app/models'

class Player < ApplicationRecord
  has_one :abilities
  belongs_to :club
end
