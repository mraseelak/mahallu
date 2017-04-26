class AddColumnsToFamily < ActiveRecord::Migration[5.0]
  def change
    add_column :families, :phone1, :string
    add_column :families, :phone2, :string
    add_column :families, :email, :string
  end
end
