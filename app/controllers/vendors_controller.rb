class VendorsController < ApplicationController

  def index
  	@vendors = Vendor.all
  end

  def new
  	@vendor = Vendor.new
  end

  def create
  	@vendor = Vendor.new(vendors_params)
  	if @vendor.save
  		redirect_to vendors_path
  	else
  		render :new
  	end
  end

  def show
  	@vendor = Vendor.find(params[:id])
  end

  def edit
  	@vendor = Vendor.find(params[:id])
  end

  def update
  	@vendor = Vendor.find(params[:id])
  	if @vendor.update(vendors_params)
  		redirect_to vendors_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@vendor = Vendor.find(params[:id])
  	@vendor.destroy
  	redirect_to vendors_path
  end

  private

  def vendors_params
  	params.require(:vendor).permit(:company_name, :person_name, :phone, :mobile, :email, :address, :city, :state)
  end
end
