class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.json :init_data
      t.boolean :employment_status
      t.integer :age
      t.string :nationality
      t.float :household_income
      t.float :personal_income
      t.string :marital_status
      t.integer :interaction

      t.timestamps
    end
  end
end
