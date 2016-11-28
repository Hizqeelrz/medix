class RawMaterialInvoicesController < ApplicationController
  before_action :set_raw_material_invoice, only: [:show, :edit, :update, :destroy]

  # GET /raw_material_invoices
  # GET /raw_material_invoices.json
  def index
    @vendors = Vendor.all
    @raw_material_invoices = RawMaterialInvoice.all.order(created_at: :desc)
    @raw_material_invoices = search(@raw_material_invoices).page(params[:page]).per(30)
  end

  # GET /raw_material_invoices/1
  # GET /raw_material_invoices/1.json
  def show
  end

  # GET /raw_material_invoices/new
  def new
    @raw_material_invoice = RawMaterialInvoice.new
  end

  # GET /raw_material_invoices/1/edit
  def edit
  end

  # POST /raw_material_invoices
  # POST /raw_material_invoices.json
  def create
    @raw_material_invoice = RawMaterialInvoice.new(raw_material_invoice_params)

    respond_to do |format|
      if @raw_material_invoice.save
        format.html { redirect_to @raw_material_invoice, notice: 'Raw material invoice was successfully created.' }
        format.json { render :show, status: :created, location: @raw_material_invoice }
      else
        format.html { render :new }
        format.json { render json: @raw_material_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_material_invoices/1
  # PATCH/PUT /raw_material_invoices/1.json
  def update
    respond_to do |format|
      if @raw_material_invoice.update(raw_material_invoice_params)
        format.html { redirect_to @raw_material_invoice, notice: 'Raw material invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_material_invoice }
      else
        format.html { render :edit }
        format.json { render json: @raw_material_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_material_invoices/1
  # DELETE /raw_material_invoices/1.json
  def destroy
    @raw_material_invoice.destroy
    respond_to do |format|
      format.html { redirect_to raw_material_invoices_url, notice: 'Raw material invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_material_invoice
      @raw_material_invoice = RawMaterialInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_material_invoice_params
      params.require(:raw_material_invoice).permit(:vendor_id, :total, raw_material_invoice_items_attributes: [:id, :quantity, :price, :unit, :raw_material_id, :_destroy])
    end

    def search scope
      scope = scope
      if params[:invoice_id].presence
        scope = scope.where(id: params[:invoice_id])
      end
      if params[:vendor_id].presence
        scope = scope.where(vendor_id: params[:vendor_id])
      end
      scope
    end
end
