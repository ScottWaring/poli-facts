class CreatePoliticians < ActiveRecord::Migration[5.2]
  def change
    create_table :politicians do |t|
      t.references :state_table
      t.string :name
      t.string :party
      t.integer :next_elec
      t.string :title
      t.string :twitter
      t.string :facebook
      t.string :district
      t.string :office_address
      t.string :phone
      t.integer :bills_sponsored
      t.integer :bills_cosponsored
      t.float :missed_votes_pct
      t.float :votes_with_party_pct
      t.string :img_url

      t.timestamps
    end
  end
end
