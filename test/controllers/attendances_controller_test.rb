require 'test_helper'

class AttendancesControllerTest < ActionController::TestCase
  test "should get mark_attendance" do
    get :mark_attendance
    assert_response :success
  end

end
