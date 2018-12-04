class CreateGovernors < ActiveRecord::Migration[5.2]
  def change
    create_table :governors do |t|
      t.references :state_table
      t.string :party
      t.string :name
      t.string :dob
      t.string :entered_office
      t.string :term_end
      t.text :bio
      t.string :phone
      t.string :address
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :twitter_handle
      t.string :photo_url
      t.timestamps
    end
  end
end
