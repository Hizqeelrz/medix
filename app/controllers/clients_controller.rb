class ClientsController < ApplicationController

  def index
    @clients = Client.order(created_at: :desc)
    @provinces = Province.all
    @areas = Area.all
    @cities = City.all
  end

  def new
  	@client = Client.new
  end

  def create
  	@client = Client.new(client_params)

  	if @client.save
  		redirect_to clients_path
  	else
  		render :new
  	end
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(client_params)
      redirect_to clients_path
    else
      render :new
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end

  def update_areas
    @areas = Area.where(province_id: params[:province_id]).all
    respond_to do |format|
      format.js
    end
  end

  def update_cities
    @cities = City.where(area_id: params[:area_id]).all
    respond_to do |format|
      format.js
    end
  end

  def client_params
  	params.require(:client).permit(:name, :phone, :email, :website, :company, :address, :city, :state, :country)
  end
end
