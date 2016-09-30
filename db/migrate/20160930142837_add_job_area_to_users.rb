class AddJobAreaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_area, :string
  end
end
