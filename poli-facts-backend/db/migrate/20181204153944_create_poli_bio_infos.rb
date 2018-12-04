class CreatePoliBioInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :poli_bio_infos do |t|
      t.string :bioguide_id
      t.integer :cspan_id


      t.timestamps
    end
  end
end
