class OrdersController < ApplicationController

  def index
  	@orders = Order.all.order(created_at: :desc)
    @clients = Client.all
    @orders = search(@orders).page(params[:page]).per(30)
  end

  def new
  	@order = Order.new
  end

  def create
  	@order = Order.new(order_params)

  	if @order.save
  		redirect_to orders_path
  	else
  		render :new
  	end
  end

  def show
  	@order = Order.find(params[:id])
  end

  def edit
  	@order = Order.find(params[:id])
  end

  def update
  	@order = Order.find(params[:id])

  	if @order.update(order_params)
  		redirect_to orders_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@order = Order.find(params[:id])

  	if @order.destroy
  		redirect_to orders_path
  	else
  		render :back
  	end
  end

  private

  def order_params
    params.require(:order).permit(:client_id, :user_id, :lat, :lon, :grandtotal, order_products_attributes: [:id, :product_id, :quantity, :price_per_unit, :total_price, :_destroy])
  end

  def search scope
    scope = scope
    if params[:client_id].presence
      scope = scope.where(client_id: params[:client_id])
    end
    if params[:state].presence
      scope = scope.where(state: params[:state])
    end
    scope
  end
end
