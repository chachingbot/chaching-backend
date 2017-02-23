class CreateClassifications < ActiveRecord::Migration[5.0]
  def change
    create_table :classifications do |t|
      t.string :base_type
      t.string :sub_type

      t.timestamps
    end
  end
end
