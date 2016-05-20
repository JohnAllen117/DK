class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :beta_number, :integer
    add_column :users, :role, :integer, default: 0
    add_column :users, :pc_position, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
