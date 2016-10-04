class UsersController < ApplicationController

  def index
    @users = User.all.order(created_at: :asc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
  end

  def update_areas
    @areas = Area.where(province_id: params[:province_id]).all
    respond do |format|
      format.js
    end
  end

  def update_cities
    @cities = City.where(area_id: params[:area_id]).all
    respond do |format|
      format.js
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :dob, :nic, :address, :city, :state, :phone, :mobile, :joining_date, :marital_date, :basic_salary, :qualification, :email, :password, :password_confirmation, :role, :job_province, :job_area, :job_city, :boss_id)
  end
  
end
