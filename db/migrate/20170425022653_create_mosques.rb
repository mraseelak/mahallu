class CreateMosques < ActiveRecord::Migration[5.0]
  def change
    create_table :mosques do |t|
      t.string :name
      t.string :street
      t.string :town
      t.string :state
      t.string :pin

      t.timestamps
    end
  end
end
