class AddBossIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :boss_id, :integer
    add_index :users, :boss_id
  end
end
