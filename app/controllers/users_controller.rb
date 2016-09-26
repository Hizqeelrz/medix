class UsersController < ApplicationController

  def index
    @users = User.all(created_at: :asc)
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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :dob, :nic, :address, :city, :state, :email, :password, :password_confirmation, :role)
  end
  
end
