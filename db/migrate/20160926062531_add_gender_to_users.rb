class AddGenderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :integer
    add_index :users, :gender
  end
end
