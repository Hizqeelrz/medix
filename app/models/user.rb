# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :integer
#  first_name             :string
#  last_name              :string
#  gender                 :integer
#  nic                    :string
#  address                :string
#  city                   :string
#  state                  :string
#  dob                    :date
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_gender                (gender)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_role                  (role)
#

class User < ActiveRecord::Base

	enum role: [:ceo, :director_marketing, :managing_director, :marketing_manager, :national_sales_manager, :sales_manager, :area_sales_manager, :sales_officer, :plant_manager, :production_manager, :production_incharge, :quality_control_manager, :quality_control_assistant, :head_accountant, :assistant_accountant, :tablet_technician, :syrup_technician, :tablet_coating_technician, :extract_technician, :cosmatics_technician, :packing_staff]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
