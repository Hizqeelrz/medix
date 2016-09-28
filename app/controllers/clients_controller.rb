class ClientsController < ApplicationController

  def index
  	@clients = Client.all
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
  end

  def edit
  end

  def client_params
  	params.require(:client).permit(:name, :phone, :email, :website, :company, :address, :city, :state, :country)
  end
end
