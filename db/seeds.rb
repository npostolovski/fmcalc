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

ball_playing_defender_stopper_primary_attributes = [
  :heading,
  :passing,
  :tackling,
  :aggression,
  :bravery,
  :decisions,
  :determination,
  :jumping_reach
]

ball_playing_defender_stopper_secondary_attributes = [
  :first_touch,
  :marking,
  :technique,
  :anticipation,
  :composure,
  :concentration,
  :positioning,
  :vision,
  :strength
]

Role.create(
  name: "Ball Playing Defender",
  duty: "stopper",
  primary_attributes: ball_playing_defender_stopper_primary_attributes,
  secondary_attributes: ball_playing_defender_stopper_secondary_attributes
)

ball_playing_defender_cover_primary_attributes = [
  :heading,
  :passing,
  :tackling,
  :aggression,
  :anticipation,
  :decisions,
  :positioning,
  :acceleration,
  :jumping_reach
]

ball_playing_defender_cover_secondary_attributes = [
  :first_touch,
  :marking,
  :technique,
  :bravery,
  :composure,
  :determination,
  :vision,
  :strength
]

Role.create(
  name: "Ball Playing Defender",
  duty: "cover",
  primary_attributes: ball_playing_defender_cover_primary_attributes,
  secondary_attributes: ball_playing_defender_cover_secondary_attributes
)

defensive_center_back_defend_primary_attributes = [
  :heading,
  :tackling,
  :jumping_reach
]

defensive_center_back_defend_secondary_attributes = [
  :marking,
  :determination,
  :positioning,
  :strength
]

Role.create(
  name: "Defensive Center Back",
  duty: "defend",
  primary_attributes: defensive_center_back_defend_primary_attributes,
  secondary_attributes: defensive_center_back_defend_secondary_attributes
)

Role.create(
  name: "Defensive Center Back",
  duty: "stopper",
  primary_attributes: defensive_center_back_defend_primary_attributes,
  secondary_attributes: defensive_center_back_defend_secondary_attributes
)

Role.create(
  name: "Defensive Center Back",
  duty: "cover",
  primary_attributes: defensive_center_back_defend_primary_attributes,
  secondary_attributes: defensive_center_back_defend_secondary_attributes
)

sweeper_primary_attributes = [
  :heading,
  :marking,
  :tackling,
  :anticipation,
  :concentration,
  :decisions,
  :positioning,
  :acceleration,
  :balance,
  :jumping_reach
]

sweeper_secondary_attributes = [
  :bravery,
  :composure,
  :determination,
  :agility,
  :strength
]

Role.create(
  name: "Sweeper",
  duty: "defend",
  primary_attributes: sweeper_primary_attributes,
  secondary_attributes: sweeper_secondary_attributes
)

libero_support_primary_attributes = [
  :heading,
  :marking,
  :passing,
  :tackling,
  :anticipation,
  :composure,
  :concentration,
  :decisions,
  :positioning,
  :teamwork,
  :acceleration,
  :balance,
  :jumping_reach
]

libero_support_secondary_attributes = [
  :dribbling,
  :bravery,
  :determination,
  :vision,
  :agility,
  :strength
]

Role.create(
  name: "Libero",
  duty: "support",
  primary_attributes: libero_support_primary_attributes,
  secondary_attributes: libero_support_secondary_attributes
)

libero_attack_primary_attributes = [
  :tackling,
  :concentration,
  :positioning,
  :teamwork,
  :workrate,
  :stamina
]

libero_attack_secondary_attributes = [
  :marking,
  :passing,
  :aggression,
  :composure,
  :decisions,
  :determination,
  :acceleration
]

Role.create(
  name: "Libero",
  duty: "attack",
  primary_attributes: libero_attack_primary_attributes,
  secondary_attributes: libero_attack_secondary_attributes
)

defensive_midfielder_defend_primary_attributes = [
  :tackling,
  :concentration,
  :positioning,
  :teamwork,
  :workrate,
  :stamina
]

defensive_midfielder_defend_secondary_attributes = [
  :marking,
  :passing,
  :aggression,
  :composure,
  :decisions,
  :determination,
  :acceleration,
  :strength
]

Role.create(
  name: "Defensive Midfielder",
  duty: "defend",
  primary_attributes: defensive_midfielder_defend_primary_attributes,
  secondary_attributes: defensive_midfielder_defend_secondary_attributes
)

defensive_midfielder_support_primary_attributes = [
  :tackling,
  :concentration,
  :positioning,
  :teamwork,
  :workrate,
  :stamina
]

defensive_midfielder_support_secondary_attributes = [
  :marking,
  :passing,
  :aggression,
  :composure,
  :decisions,
  :determination,
  :acceleration
]

Role.create(
  name: "Defensive Midfielder",
  duty: "support",
  primary_attributes: defensive_midfielder_defend_primary_attributes,
  secondary_attributes: defensive_midfielder_defend_secondary_attributes
)

deep_lying_playmaker_defend_primary_attributes = [
  :first_touch,
  :passing,
  :technique,
  :composure,
  :decisions,
  :vision
]

deep_lying_playmaker_defend_secondary_attributes = [
  :long_shots,
  :off_the_ball,
  :positioning,
  :teamwork,
  :workrate,
  :balance
]

Role.create(
  name: "Deep Lying Playmaker",
  duty: "defend",
  primary_attributes: deep_lying_playmaker_defend_primary_attributes,
  secondary_attributes: deep_lying_playmaker_defend_secondary_attributes
)

deep_lying_playmaker_support_primary_attributes = [
  :first_touch,
  :passing,
  :technique,
  :composure,
  :decisions,
  :vision
]

deep_lying_playmaker_support_secondary_attributes = [
  :long_shots,
  :off_the_ball,
  :positioning,
  :teamwork,
  :workrate,
  :balance
]

Role.create(
  name: "Deep Lying Playmaker",
  duty: "support",
  primary_attributes: deep_lying_playmaker_support_primary_attributes,
  secondary_attributes: deep_lying_playmaker_support_secondary_attributes
)

ball_winning_midfielder_defend_primary_attributes = [
  :first_touch,
  :passing,
  :tackling,
  :technique,
  :aggression,
  :bravery,
  :composure,
  :decisions,
  :determination,
  :teamwork,
  :vision,
  :workrate,
  :stamina,
  :strength
]

ball_winning_midfielder_defend_secondary_attributes = [
  :long_shots,
  :marking,
  :off_the_ball,
  :positioning,
  :acceleration,
  :balance
]

Role.create(
  name: "Ball Winning Midfielder",
  duty: "defend",
  primary_attributes: ball_winning_midfielder_defend_primary_attributes,
  secondary_attributes: ball_winning_midfielder_defend_secondary_attributes
)

ball_winning_midfielder_support_primary_attributes = [
  :tackling,
  :aggression,
  :bravery,
  :determination,
  :teamwork,
  :workrate,
  :stamina,
  :strength
]

ball_winning_midfielder_support_secondary_attributes = [
  :marking,
  :positioning,
  :acceleration
]

Role.create(
  name: "Ball Winning Midfielder",
  duty: "support",
  primary_attributes: ball_winning_midfielder_defend_primary_attributes,
  secondary_attributes: ball_winning_midfielder_defend_secondary_attributes
)

anchor_man_primary_attributes = [
  :tackling,
  :aggression,
  :anticipation,
  :bravery,
  :composure,
  :concentration,
  :decisions,
  :positioning,
  :teamwork,
  :workrate,
  :stamina
]

anchor_man_secondary_attributes = [
  :heading,
  :marking,
  :passing,
  :determination,
  :acceleration,
  :strength
]

Role.create(
  name: "Anchor Man",
  duty: "defend",
  primary_attributes: anchor_man_primary_attributes,
  secondary_attributes: anchor_man_secondary_attributes
)

half_back_primary_attributes = [
  :first_touch,
  :passing,
  :technique,
  :anticipation,
  :composure,
  :decisions,
  :positioning,
  :teamwork
]

half_back_secondary_attributes = [
  :heading,
  :marking,
  :tackling,
  :concentration,
  :determination,
  :vision,
  :balance,
  :strength
]

Role.create(
  name: "Half Back",
  duty: "defend",
  primary_attributes: half_back_primary_attributes,
  secondary_attributes: half_back_secondary_attributes
)

regista_primary_attributes = [
  :first_touch,
  :passing,
  :technique,
  :composure,
  :decisions,
  :off_the_ball,
  :vision
]

regista_secondary_attributes = [
  :heading,
  :marking,
  :tackling,
  :aggression,
  :anticipation,
  :concentration,
  :determination,
  :positioning,
  :teamwork,
  :balance,
  :strength
]

Role.create(
  name: "Regista",
  duty: "support",
  primary_attributes: regista_primary_attributes,
  secondary_attributes: regista_secondary_attributes
)

roaming_playmaker_primary_attributes = [
  :dribbling,
  :first_touch,
  :passing,
  :technique,
  :anticipation,
  :composure,
  :decisions,
  :determination,
  :off_the_ball,
  :vision,
  :workrate,
  :acceleration,
  :stamina
]

roaming_playmaker_secondary_attributes = [
  :finishing,
  :long_shots,
  :aggression,
  :concentration,
  :positioning,
  :teamwork,
  :agility,
  :balance,
  :natural_fitness,
  :pace,
  :strength
]

Role.create(
  name: "Roaming Playmaker",
  duty: "support",
  primary_attributes: roaming_playmaker_primary_attributes,
  secondary_attributes: roaming_playmaker_secondary_attributes
)

central_midfielder_defend_primary_attributes = [
  :dribbling,
  :passing,
  :tackling,
  :technique,
  :anticipation,
  :composure,
  :concentration,
  :off_the_ball,
  :teamwork,
  :vision,
  :acceleration
]

central_midfielder_defend_secondary_attributes = [
  :finishing,
  :first_touch,
  :heading,
  :long_shots,
  :marking,
  :decisions,
  :determination,
  :positioning,
  :workrate,
  :agility,
  :balance,
  :natural_fitness,
  :pace,
  :stamina,
  :strength
]

Role.create(
  name: "Central Midfielder",
  duty: "defend",
  primary_attributes: central_midfielder_defend_primary_attributes,
  secondary_attributes: central_midfielder_defend_secondary_attributes
)

central_midfielder_support_primary_attributes = [
  :first_touch,
  :passing,
  :decisions,
  :teamwork
]

central_midfielder_support_secondary_attributes = [
  :heading,
  :marking,
  :tackling,
  :concentration,
  :determination,
  :off_the_ball,
  :positioning,
  :workrate,
  :stamina
]

Role.create(
  name: "Central Midfielder",
  duty: "support",
  primary_attributes: central_midfielder_support_primary_attributes,
  secondary_attributes: central_midfielder_support_secondary_attributes
)

central_midfielder_attack_primary_attributes = [
  :first_touch,
  :passing,
  :decisions,
  :off_the_ball
]

central_midfielder_attack_secondary_attributes = [
  :finishing,
  :long_shots,
  :marking,
  :tackling,
  :concentration,
  :determination,
  :positioning,
  :teamwork,
  :workrate,
  :acceleration,
  :stamina
]

Role.create(
  name: "Central Midfielder",
  duty: "attack",
  primary_attributes: central_midfielder_attack_primary_attributes,
  secondary_attributes: central_midfielder_attack_secondary_attributes
)

central_midfielder_automatic_primary_attributes = [
  :first_touch,
  :passing,
  :decisions,
  :teamwork
]

central_midfielder_automatic_secondary_attributes = [
  :finishing,
  :long_shots,
  :marking,
  :tackling,
  :concentration,
  :determination,
  :off_the_ball,
  :positioning,
  :workrate,
  :acceleration,
  :stamina
]

Role.create(
  name: "Central Midfielder",
  duty: "automatic",
  primary_attributes: central_midfielder_automatic_primary_attributes,
  secondary_attributes: central_midfielder_automatic_secondary_attributes
)

box_to_box_midfielder_primary_attributes = [
  :passing,
  :tackling,
  :decisions,
  :determination,
  :off_the_ball,
  :positioning,
  :teamwork,
  :workrate,
  :acceleration,
  :natural_fitness,
  :stamina
]

box_to_box_midfielder_secondary_attributes = [
  :finishing,
  :first_touch,
  :long_shots,
  :marking,
  :anticipation,
  :bravery,
  :composure,
  :concentration,
  :balance
]

Role.create(
  name: "Box To Box Midfielder",
  duty: "support",
  primary_attributes: box_to_box_midfielder_primary_attributes,
  secondary_attributes: box_to_box_midfielder_secondary_attributes
)
