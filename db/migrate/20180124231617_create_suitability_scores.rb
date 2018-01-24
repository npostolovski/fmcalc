class CreateSuitabilityScores < ActiveRecord::Migration[5.1]
  def change
    create_table :suitability_scores do |t|
      t.integer :player_id
      t.integer :role_id
      t.integer :primary_score
      t.integer :secondary_score
      t.integer :total_score
      t.integer :average_primary
      t.integer :average_secondary
      t.integer :total_average

      t.timestamps
    end
  end
end
