# == Schema Information
#
# Table name: attendances
#
#  time_in      :datetime
#  time_out     :datetime
#  on_leave     :boolean
#  leave_reason :text
#  approved_by  :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_attendances_on_time_in   (time_in)
#  index_attendances_on_time_out  (time_out)
#  index_attendances_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_77ad02f5c5  (user_id => users.id)
#

require 'test_helper'

class AttendancesControllerTest < ActionController::TestCase
  test "should get mark_attendance" do
    get :mark_attendance
    assert_response :success
  end

end