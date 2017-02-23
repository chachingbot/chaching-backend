class CreateQueries < ActiveRecord::Migration[5.0]
  def change
    create_table :queries do |t|
      t.string :raw_input
      t.references :classification, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :resolved

      t.timestamps
    end
  end
end
