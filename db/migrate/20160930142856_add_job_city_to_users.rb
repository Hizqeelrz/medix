class AddJobCityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_city, :string
  end
end
