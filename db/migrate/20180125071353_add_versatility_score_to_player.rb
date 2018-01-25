class AddVersatilityScoreToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :versatility_score, :float, default: 0.00
  end
end
