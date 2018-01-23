require_all 'app/models'

class Player < ApplicationRecord
  has_one :abilities
end
