class AddAggressionToAbilities < ActiveRecord::Migration[5.1]
  def change
    add_column :abilities, :aggression, :integer
  end
end
