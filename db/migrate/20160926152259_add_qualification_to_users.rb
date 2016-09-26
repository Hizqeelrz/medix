class AddQualificationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :qualification, :integer
    add_index :users, :qualification
  end
end
