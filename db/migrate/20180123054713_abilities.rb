class Abilities < ActiveRecord::Migration[5.1]
  def change
    create_table :abilities do |t|
      t.integer :player_id

      t.string :one_on_ones
      t.string :acceleration
      t.string :aerial_ability
      t.string :agility
      t.string :anticipation
      t.string :bravery
      t.string :balance
      t.string :command_of_area
      t.string :composure
      t.string :communication
      t.string :corners
      t.string :concentration
      t.string :crossing
      t.string :decisions
      t.string :determination
      t.string :dribbling
      t.string :eccentricity
      t.string :finishing
      t.string :first_touch
      t.string :flair
      t.string :free_kicks
      t.string :handling
      t.string :heading
      t.string :jumping_reach
      t.string :kicking
      t.string :leadership
      t.string :long_shots
      t.string :long_throws
      t.string :marking
      t.string :natural_fitness
      t.string :off_the_ball
      t.string :passing
      t.string :pace
      t.string :positioning
      t.string :punching
      t.string :reflexes
      t.string :rushing_out
      t.string :stamina
      t.string :strength
      t.string :tackling
      t.string :teamwork
      t.string :technique
      t.string :throwing
      t.string :vision
      t.string :workrate
    end
  end
end
