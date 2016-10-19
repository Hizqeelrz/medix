class RawMaterialInvoiceItemsController < ApplicationController
  before_action :set_raw_material_invoice_item, only: [:show, :edit, :update, :destroy]

  # GET /raw_material_invoice_items
  # GET /raw_material_invoice_items.json
  def index
    @raw_material_invoice_items = RawMaterialInvoiceItem.all
  end

  # GET /raw_material_invoice_items/1
  # GET /raw_material_invoice_items/1.json
  def show
  end

  # GET /raw_material_invoice_items/new
  def new
    @raw_material_invoice_item = RawMaterialInvoiceItem.new
  end

  # GET /raw_material_invoice_items/1/edit
  def edit
  end

  # POST /raw_material_invoice_items
  # POST /raw_material_invoice_items.json
  def create
    @raw_material_invoice_item = RawMaterialInvoiceItem.new(raw_material_invoice_item_params)

    respond_to do |format|
      if @raw_material_invoice_item.save
        format.html { redirect_to @raw_material_invoice_item, notice: 'Raw material invoice item was successfully created.' }
        format.json { render :show, status: :created, location: @raw_material_invoice_item }
      else
        format.html { render :new }
        format.json { render json: @raw_material_invoice_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_material_invoice_items/1
  # PATCH/PUT /raw_material_invoice_items/1.json
  def update
    respond_to do |format|
      if @raw_material_invoice_item.update(raw_material_invoice_item_params)
        format.html { redirect_to @raw_material_invoice_item, notice: 'Raw material invoice item was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_material_invoice_item }
      else
        format.html { render :edit }
        format.json { render json: @raw_material_invoice_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_material_invoice_items/1
  # DELETE /raw_material_invoice_items/1.json
  def destroy
    @raw_material_invoice_item.destroy
    respond_to do |format|
      format.html { redirect_to raw_material_invoice_items_url, notice: 'Raw material invoice item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_material_invoice_item
      @raw_material_invoice_item = RawMaterialInvoiceItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_material_invoice_item_params
      params.require(:raw_material_invoice_item).permit(:quantity, :unit, :price, :raw_material_id, :raw_material_invoice_id)
    end
end
