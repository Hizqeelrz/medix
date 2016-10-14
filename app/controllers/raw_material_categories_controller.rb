class RawMaterialCategoriesController < ApplicationController

  def index
  	@raw_material_categories = RawMaterialCategory.all
  end

  def new
  	@raw_material_category = RawMaterialCategory.new
  end

  def create
  	@raw_material_category = RawMaterialCategory.new(category_params)

  	if @raw_material_category.save
  		redirect_to raw_material_categories_path
  	else
  		render :new
  	end
  end

  def show
  	@raw_material_category = RawMaterialCategory.find(params[:id])
  end

  def edit
  	@raw_material_category = RawMaterialCategory.find(params[:id])
  end

  def update
  	@raw_material_category = RawMaterialCategory.find(params[:id])

  	if @raw_material_category.update(category_params)
  		redirect_to raw_material_categories_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@raw_material_category = RawMaterialCategory.find(params[:id])
  	@raw_material_category.destroy
  	redirect_to raw_material_categories_path
  end

  private

  def category_params
  	params.require(:raw_material_category).permit(:name, :description)
  end
end
