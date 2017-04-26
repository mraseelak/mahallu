class CreateSecretaries < ActiveRecord::Migration[5.0]
  def change
    create_table :secretaries do |t|
      t.string :name
      t.references :family, foreign_key: true
      t.references :mosque, foreign_key: true

      t.timestamps
    end
  end
end
