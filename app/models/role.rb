class Role < ApplicationRecord
  serialize :primary_attributes,Array
  serialize :secondary_attributes,Array
  has_many :suitability_scores
end
