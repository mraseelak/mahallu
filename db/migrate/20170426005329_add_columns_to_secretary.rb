class AddColumnsToSecretary < ActiveRecord::Migration[5.0]
  def change
    add_column :secretaries, :phone1, :string
    add_column :secretaries, :phone2, :string
    add_column :secretaries, :email, :string
  end
end
