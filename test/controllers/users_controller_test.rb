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

require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end