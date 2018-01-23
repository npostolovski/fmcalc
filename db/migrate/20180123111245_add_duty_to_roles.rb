class AddDutyToRoles < ActiveRecord::Migration[5.1]
  def change
    add_column :roles, :duty, :string
  end
end
