# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.destroy_all

goalkeeper_primary_attributes = [
  :aerial_ability,
  :command_of_area,
  :communication,
  :handling,
  :kicking,
  :reflexes,
  :positioning,
  :agility,
  :jumping_reach
]

goalkeeper_secondary_attributes = [
  :first_touch,
  :one_on_ones,
  :throwing,
  :anticipation,
  :decisions,
  :determination,
  :strength
]

Role.create(
  name: "Goalkeeper",
  primary_attributes: goalkeeper_primary_attributes,
  secondary_attributes: goalkeeper_secondary_attributes
)
