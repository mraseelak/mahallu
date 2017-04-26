class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|
      t.string :name
      t.decimal :age
      t.boolean :head
      t.decimal :members
      t.string :street
      t.string :town
      t.string :state
      t.string :pin
      t.references :mosque, foreign_key: true

      t.timestamps
    end
  end
end
