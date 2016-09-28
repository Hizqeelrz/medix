class AddJobProvinceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_province, :string
  end
end
