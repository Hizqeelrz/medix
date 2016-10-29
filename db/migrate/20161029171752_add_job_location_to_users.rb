class AddJobLocationToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :province, index: true, foreign_key: true
    add_reference :users, :area, index: true, foreign_key: true
    add_reference :users, :city, index: true, foreign_key: true
  end
end
