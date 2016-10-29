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
#  image_file_name        :string
#  image_content_type     :string
#  image_file_size        :integer
#  image_updated_at       :datetime
#  province_id            :integer
#  area_id                :integer
#  city_id                :integer
#
# Indexes
#
#  index_users_on_area_id               (area_id)
#  index_users_on_basic_salary          (basic_salary)
#  index_users_on_boss_id               (boss_id)
#  index_users_on_city_id               (city_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_gender                (gender)
#  index_users_on_marital_status        (marital_status)
#  index_users_on_province_id           (province_id)
#  index_users_on_qualification         (qualification)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_role                  (role)
#
# Foreign Keys
#
#  fk_rails_560da4bd54  (province_id => provinces.id)
#  fk_rails_8f8a4b3fcb  (area_id => areas.id)
#  fk_rails_9c7442481a  (city_id => cities.id)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
