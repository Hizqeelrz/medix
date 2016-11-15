class RawMaterialsController < ApplicationController

  def index
  	@raw_materials = RawMaterial.all.page(params[:page]).per(20)
  end

  def new
  	@raw_material = RawMaterial.new
  end

  def create
  	@raw_material = RawMaterial.new(material_params)

  	if @raw_material.save
  		redirect_to raw_materials_path
  	else
  		render :new
  	end
  end

  def show
  	@raw_material = RawMaterial.find(params[:id])
  end

  def edit
  	@raw_material = RawMaterial.find(params[:id])
  end

  def update
  	@raw_material = RawMaterial.find(params[:id])

  	if @raw_material.update(material_params)
  		redirect_to raw_materials_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@raw_material = RawMaterial.find(params[:id])
  	@raw_material.destroy
  	redirect_to raw_materials_path
  end

  private

  def material_params
  	params.require(:raw_material).permit(:name, :raw_material_category_id)
  end
end
