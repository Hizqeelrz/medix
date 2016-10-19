class AttendancesController < ApplicationController
  def mark_attendance
  	@users = User.all
  end
end
