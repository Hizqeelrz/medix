class AttendancesController < ApplicationController

  def mark_attendance
  	@users = User.all.order(created_at: :desc)
  	@users = search(@users).page(params[:page]).per(32)
  end

  private

  def search scope
  	scope = scope
  	if params[:query].presence
  		scope = scope.search_by_name_phone(params[:query])
  	end
  	scope
  end
end
