class Player < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      
      t.integer :abilities_id
      t.integer :club_id

      t.timestamps
    end
  end
end
