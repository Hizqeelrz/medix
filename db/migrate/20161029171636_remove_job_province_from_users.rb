class RemoveJobProvinceFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :job_province, :string
    remove_column :users, :job_area, :string
    remove_column :users, :job_city, :string
  end
end
