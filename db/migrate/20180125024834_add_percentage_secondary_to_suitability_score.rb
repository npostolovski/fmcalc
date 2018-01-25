class AddPercentageSecondaryToSuitabilityScore < ActiveRecord::Migration[5.1]
  def change
    add_column :suitability_scores, :percentage_secondary, :float
  end
end
