class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.text :primary_attributes
      t.text :secondary_attributes

      t.timestamps
    end
  end
end
