class RawMaterialsController < ApplicationController

  def index
    @categories = RawMaterialCategory.all
  	@raw_materials = RawMaterial.all.order(created_at: :desc)
    @raw_materials = search(@raw_materials).page(params[:page]).per(20)
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

  def search scope
    scope = scope
    if params[:query].presence
      scope = scope.search_by_name(params[:query])
    end
    if params[:category].presence
      scope = scope.where(raw_material_category_id: params[:category])
    end
    scope
  end
end
