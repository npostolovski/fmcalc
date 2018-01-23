class Role < ApplicationRecord
  serialize :primary_attributes,Array
  serialize :secondary_attributes,Array
end
