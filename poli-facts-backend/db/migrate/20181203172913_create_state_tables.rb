class CreateStateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :state_tables do |t|
      t.string :name
      t.string :abbrv
      t.integer :census_id
      t.integer :poverty

      t.timestamps
    end
  end
end
