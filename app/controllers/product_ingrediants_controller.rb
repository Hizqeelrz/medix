class ProductIngrediantsController < ApplicationController
  before_action :set_product_ingrediant, only: [:show, :edit, :update, :destroy]

  # GET /product_ingrediants
  # GET /product_ingrediants.json
  def index
    @product_ingrediants = ProductIngrediant.all
  end

  # GET /product_ingrediants/1
  # GET /product_ingrediants/1.json
  def show
  end

  # GET /product_ingrediants/new
  def new
    @product_ingrediant = ProductIngrediant.new
  end

  # GET /product_ingrediants/1/edit
  def edit
  end

  # POST /product_ingrediants
  # POST /product_ingrediants.json
  def create
    @product_ingrediant = ProductIngrediant.new(product_ingrediant_params)

    respond_to do |format|
      if @product_ingrediant.save
        format.html { redirect_to @product_ingrediant, notice: 'Product ingrediant was successfully created.' }
        format.json { render :show, status: :created, location: @product_ingrediant }
      else
        format.html { render :new }
        format.json { render json: @product_ingrediant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_ingrediants/1
  # PATCH/PUT /product_ingrediants/1.json
  def update
    respond_to do |format|
      if @product_ingrediant.update(product_ingrediant_params)
        format.html { redirect_to @product_ingrediant, notice: 'Product ingrediant was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_ingrediant }
      else
        format.html { render :edit }
        format.json { render json: @product_ingrediant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_ingrediants/1
  # DELETE /product_ingrediants/1.json
  def destroy
    @product_ingrediant.destroy
    respond_to do |format|
      format.html { redirect_to product_ingrediants_url, notice: 'Product ingrediant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_ingrediant
      @product_ingrediant = ProductIngrediant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_ingrediant_params
      params.require(:product_ingrediant).permit(:raw_material_id, :product_id, :unit, :quantity)
    end
end
