class AddColumnsToStateTable < ActiveRecord::Migration[5.2]
  def change
    add_column :state_tables, :high_school_grad, :float
    add_column :state_tables, :bachelor_deg, :float 
    add_column :state_tables, :white, :float
    add_column :state_tables, :black, :float
    add_column :state_tables, :hispanic, :float
    add_column :state_tables, :asian, :float
    add_column :state_tables, :native_indian_alaska, :float
    add_column :state_tables, :two_plus_race, :float
    add_column :state_tables, :unaccounted_race, :float
  end
end
