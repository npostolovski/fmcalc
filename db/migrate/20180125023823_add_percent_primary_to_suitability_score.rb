class AddPercentPrimaryToSuitabilityScore < ActiveRecord::Migration[5.1]
  def change
    add_column :suitability_scores, :percentage_primary, :float
  end
end
