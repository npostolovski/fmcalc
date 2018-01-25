# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180125071353) do

  create_table "abilities", force: :cascade do |t|
    t.integer "player_id"
    t.float "one_on_ones"
    t.float "acceleration"
    t.float "aerial_ability"
    t.float "agility"
    t.float "anticipation"
    t.float "bravery"
    t.float "balance"
    t.float "command_of_area"
    t.float "composure"
    t.float "communication"
    t.float "corners"
    t.float "concentration"
    t.float "crossing"
    t.float "decisions"
    t.float "determination"
    t.float "dribbling"
    t.float "eccentricity"
    t.float "finishing"
    t.float "first_touch"
    t.float "flair"
    t.float "free_kicks"
    t.float "handling"
    t.float "heading"
    t.float "jumping_reach"
    t.float "kicking"
    t.float "leadership"
    t.float "long_shots"
    t.float "long_throws"
    t.float "marking"
    t.float "natural_fitness"
    t.float "off_the_ball"
    t.float "passing"
    t.float "pace"
    t.float "positioning"
    t.float "punching"
    t.float "reflexes"
    t.float "rushing_out"
    t.float "stamina"
    t.float "strength"
    t.float "tackling"
    t.float "teamwork"
    t.float "technique"
    t.float "throwing"
    t.float "vision"
    t.float "workrate"
    t.integer "aggression"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insights", force: :cascade do |t|
    t.integer "club_id"
    t.text "poor_depth_roles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "versatility_score", default: 0.0
  end

  create_table "role_depths", force: :cascade do |t|
    t.integer "club_id"
    t.integer "role_id"
    t.float "depth_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "primary_attributes"
    t.text "secondary_attributes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "duty"
  end

  create_table "suitability_scores", force: :cascade do |t|
    t.integer "player_id"
    t.integer "role_id"
    t.float "primary_score"
    t.float "secondary_score"
    t.float "total_score"
    t.float "average_primary"
    t.float "average_secondary"
    t.float "total_average"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "percentage_primary"
    t.float "percentage_secondary"
    t.float "suitability_rating"
  end

end
