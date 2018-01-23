class Club < ActiveRecord::Migration[5.1]
  def change
    create_table :club do |t|
      t.string :name

      t.timestamps
    end
  end
end
