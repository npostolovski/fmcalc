class AddSuitabilityRating < ActiveRecord::Migration[5.1]
  def change
    add_column :suitability_scores, :suitability_rating, :float
  end
end
