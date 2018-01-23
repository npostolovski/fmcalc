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

ActiveRecord::Schema.define(version: 20180123063455) do

  create_table "abilities", force: :cascade do |t|
    t.integer "player_id"
    t.string "one_on_ones"
    t.string "acceleration"
    t.string "aerial_ability"
    t.string "agility"
    t.string "anticipation"
    t.string "bravery"
    t.string "balance"
    t.string "command_of_area"
    t.string "composure"
    t.string "communication"
    t.string "corners"
    t.string "concentration"
    t.string "crossing"
    t.string "decisions"
    t.string "determination"
    t.string "dribbling"
    t.string "eccentricity"
    t.string "finishing"
    t.string "first_touch"
    t.string "flair"
    t.string "free_kicks"
    t.string "handling"
    t.string "heading"
    t.string "jumping_reach"
    t.string "kicking"
    t.string "leadership"
    t.string "long_shots"
    t.string "long_throws"
    t.string "marking"
    t.string "natural_fitness"
    t.string "off_the_ball"
    t.string "passing"
    t.string "pace"
    t.string "positioning"
    t.string "punching"
    t.string "reflexes"
    t.string "rushing_out"
    t.string "stamina"
    t.string "strength"
    t.string "tackling"
    t.string "teamwork"
    t.string "technique"
    t.string "throwing"
    t.string "vision"
    t.string "workrate"
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

end
