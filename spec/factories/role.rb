FactoryBot.define do
  factory :role do
    name "Winger"
    duty "attack"
    primary_attributes [:crossing]
    secondary_attributes [:dribbling]
  end
end
