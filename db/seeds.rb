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
  duty: "defend",
  primary_attributes: goalkeeper_primary_attributes,
  secondary_attributes: goalkeeper_secondary_attributes
)

sweeper_keeper_defensive_primary_attributes = [
  :aerial_ability,
  :command_of_area,
  :communication,
  :first_touch,
  :handling,
  :kicking,
  :passing,
  :reflexes,
  :anticipation,
  :composure,
  :positioning,
  :agility
]

sweeper_keeper_defensive_secondary_attributes = [
  :one_on_ones,
  :throwing,
  :concentration,
  :decisions
]

Role.create(
  name: "Sweeper Keeper",
  duty: "defend",
  primary_attributes: sweeper_keeper_defensive_primary_attributes,
  secondary_attributes: sweeper_keeper_defensive_secondary_attributes
)

sweeper_keeper_support_primary_attributes = [
  :aerial_ability,
  :command_of_area,
  :first_touch,
  :handling,
  :kicking,
  :passing,
  :reflexes,
  :anticipation,
  :positioning,
  :agility
]

sweeper_keeper_support_secondary_attributes = [
  :one_on_ones,
  :rushing_out,
  :throwing,
  :composure,
  :concentration,
  :decisions,
  :acceleration
]

Role.create(
  name: "Sweeper Keeper",
  duty: "support",
  primary_attributes: sweeper_keeper_support_primary_attributes,
  secondary_attributes: sweeper_keeper_support_secondary_attributes
)

sweeper_keeper_attack_primary_attributes = [
  :aerial_ability,
  :command_of_area,
  :first_touch,
  :handling,
  :kicking,
  :passing,
  :reflexes,
  :rushing_out,
  :anticipation,
  :composure,
  :positioning,
  :acceleration,
  :agility
]

sweeper_keeper_attack_secondary_attributes = [
  :eccentricity,
  :one_on_ones,
  :throwing,
  :concentration,
  :decisions
]

Role.create(
  name: "Sweeper Keeper",
  duty: "attack",
  primary_attributes: sweeper_keeper_attack_primary_attributes,
  secondary_attributes: sweeper_keeper_attack_secondary_attributes
)

central_defender_defend_primary_attributes = [
  :first_touch,
  :heading,
  :marking,
  :passing,
  :tackling,
  :composure,
  :positioning,
  :acceleration,
  :agility,
  :jumping_reach
]

central_defender_defend_secondary_attributes = [
  :aggression,
  :anticipation,
  :bravery,
  :concentration,
  :decisions,
  :determination,
  :strength
]

Role.create(
  name: "Central Defender",
  duty: "defend",
  primary_attributes: central_defender_defend_primary_attributes,
  secondary_attributes: central_defender_defend_secondary_attributes
)

central_defender_stopper_primary_attributes = [
  :heading,
  :tackling,
  :aggression,
  :bravery,
  :decisions,
  :determination,
  :jumping_reach
]

central_defender_stopper_secondary_attributes = [
  :marking,
  :anticipation,
  :concentration,
  :positioning,
  :strength
]

Role.create(
  name: "Central Defender",
  duty: "stopper",
  primary_attributes: central_defender_stopper_primary_attributes,
  secondary_attributes: central_defender_stopper_secondary_attributes
)

central_defender_cover_primary_attributes = [
  :heading,
  :tackling,
  :aggression,
  :anticipation,
  :concentration,
  :decisions,
  :positioning,
  :acceleration,
  :jumping_reach
]

central_defender_cover_secondary_attributes = [
  :marking,
  :bravery,
  :determination,
  :strength
]

Role.create(
  name: "Central Defender",
  duty: "cover",
  primary_attributes: central_defender_cover_primary_attributes,
  secondary_attributes: central_defender_cover_secondary_attributes
)

ball_playing_defender_defend_primary_attributes = [
  :heading,
  :marking,
  :passing,
  :tackling,
  :positioning,
  :acceleration,
  :jumping_reach
]

ball_playing_defender_defend_secondary_attributes = [
  :first_touch,
  :technique,
  :aggression,
  :anticipation,
  :bravery,
  :composure,
  :concentration,
  :decisions,
  :determination,
  :vision,
  :strength
]

Role.create(
  name: "Ball Playing Defender",
  duty: "defend",
  primary_attributes: ball_playing_defender_defend_primary_attributes,
  secondary_attributes: ball_playing_defender_defend_secondary_attributes
)
