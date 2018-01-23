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

ActiveRecord::Schema.define(version: 20180123105047) do

  create_table "abilities", force: :cascade do |t|
    t.integer "player_id"
    t.integer "one_on_ones"
    t.integer "acceleration"
    t.integer "aerial_ability"
    t.integer "agility"
    t.integer "anticipation"
    t.integer "bravery"
    t.integer "balance"
    t.integer "command_of_area"
    t.integer "composure"
    t.integer "communication"
    t.integer "corners"
    t.integer "concentration"
    t.integer "crossing"
    t.integer "decisions"
    t.integer "determination"
    t.integer "dribbling"
    t.integer "eccentricity"
    t.integer "finishing"
    t.integer "first_touch"
    t.integer "flair"
    t.integer "free_kicks"
    t.integer "handling"
    t.integer "heading"
    t.integer "jumping_reach"
    t.integer "kicking"
    t.integer "leadership"
    t.integer "long_shots"
    t.integer "long_throws"
    t.integer "marking"
    t.integer "natural_fitness"
    t.integer "off_the_ball"
    t.integer "passing"
    t.integer "pace"
    t.integer "positioning"
    t.integer "punching"
    t.integer "reflexes"
    t.integer "rushing_out"
    t.integer "stamina"
    t.integer "strength"
    t.integer "tackling"
    t.integer "teamwork"
    t.integer "technique"
    t.integer "throwing"
    t.integer "vision"
    t.integer "workrate"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "abilities_id"
    t.integer "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "primary_attributes"
    t.text "secondary_attributes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
