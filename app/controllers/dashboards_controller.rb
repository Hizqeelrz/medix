class DashboardsController < ApplicationController

  def dashboard
  	@user = User.find(current_user)
  end

end
