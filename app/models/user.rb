class User < ActiveRecord::Base

	enum role: [:ceo, :director_marketing, :managing_director, :marketing_manager, :national_sales_manager, :sales_manager, :area_sales_manager, :sales_officer, :plant_manager, :production_manager, :production_incharge, :quality_control_manager, :quality_control_assistant, :head_accountant, :assistant_accountant, :tablet_technician, :syrup_technician, :tablet_coating_technician, :extract_technician, :cosmatics_technician, :packing_staff]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
