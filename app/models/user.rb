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
#  phone                  :string
#  mobile                 :string
#  joining_date           :date
#  marital_status         :integer
#  basic_salary           :integer
#  qualification          :integer
#  boss_id                :integer
#  job_province           :string
#  job_area               :string
#  job_city               :string
#  image_file_name        :string
#  image_content_type     :string
#  image_file_size        :integer
#  image_updated_at       :datetime
#
# Indexes
#
#  index_users_on_basic_salary          (basic_salary)
#  index_users_on_boss_id               (boss_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_gender                (gender)
#  index_users_on_marital_status        (marital_status)
#  index_users_on_qualification         (qualification)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_role                  (role)
#

class User < ActiveRecord::Base

	enum role: [:ceo, :director_marketing, :managing_director, :marketing_manager, :national_sales_manager, :sales_manager, :area_sales_manager, :sales_officer, :plant_manager, :production_manager, :production_incharge, :quality_control_manager, :quality_control_assistant, :head_accountant, :assistant_accountant, :tablet_technician, :syrup_technician, :tablet_coating_technician, :extract_technician, :cosmatics_technician, :packing_staff]

  has_many :attendances
	has_many :orders
	belongs_to :boss, class_name: "User"
	has_many :subordinates, class_name: "User", foreign_key: "boss_id"

	has_attached_file :image, styles: { original: "600x600#", medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
  	"#{self.first_name} #{self.last_name}"
  end


end
