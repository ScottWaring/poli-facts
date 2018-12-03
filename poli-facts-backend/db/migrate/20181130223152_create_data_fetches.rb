class CreateDataFetches < ActiveRecord::Migration[5.2]
  def change
    create_table :data_fetches do |t|

      t.timestamps
    end
  end
end
