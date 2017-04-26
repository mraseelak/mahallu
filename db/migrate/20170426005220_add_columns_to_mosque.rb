class AddColumnsToMosque < ActiveRecord::Migration[5.0]
  def change
    add_column :mosques, :phone, :string
    add_column :mosques, :email, :string
  end
end
