class Abilities < ActiveRecord::Migration[5.1]
  def change
    create_table :abilities do |t|
      t.integer :player_id

      t.integer :one_on_ones
      t.integer :acceleration
      t.integer :aerial_ability
      t.integer :agility
      t.integer :anticipation
      t.integer :bravery
      t.integer :balance
      t.integer :command_of_area
      t.integer :composure
      t.integer :communication
      t.integer :corners
      t.integer :concentration
      t.integer :crossing
      t.integer :decisions
      t.integer :determination
      t.integer :dribbling
      t.integer :eccentricity
      t.integer :finishing
      t.integer :first_touch
      t.integer :flair
      t.integer :free_kicks
      t.integer :handling
      t.integer :heading
      t.integer :jumping_reach
      t.integer :kicking
      t.integer :leadership
      t.integer :long_shots
      t.integer :long_throws
      t.integer :marking
      t.integer :natural_fitness
      t.integer :off_the_ball
      t.integer :passing
      t.integer :pace
      t.integer :positioning
      t.integer :punching
      t.integer :reflexes
      t.integer :rushing_out
      t.integer :stamina
      t.integer :strength
      t.integer :tackling
      t.integer :teamwork
      t.integer :technique
      t.integer :throwing
      t.integer :vision
      t.integer :workrate
    end
  end
end
