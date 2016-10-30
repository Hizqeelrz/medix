class ProductsController < ApplicationController

  def index
  	@products = Product.all.page(params[:page]).per(30)
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)

  	if @product.save
  		redirect_to products_path
  	else
  		render :new
  	end
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
  end

  private

  def product_params
  	params.require(:product).permit(:name, product_ingrediants_attributes: [:id, :raw_material_id, :quantity, :unit, :_destroy])
  end
end
