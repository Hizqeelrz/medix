class BankTransactionsController < ApplicationController
  before_action :set_bank_transaction, only: [:show, :edit, :update, :destroy]

  # GET /bank_transactions
  # GET /bank_transactions.json
  def index
    @bank_accounts = BankAccount.all
    @types = BankTransaction::TRANSACTION_TYPE.map {|k,v| [k,v]}

    @bank_transactions = BankTransaction.all.page(params[:page]).per(30)
    @bank_transactions = search(@bank_transactions)
  end

  # GET /bank_transactions/1
  # GET /bank_transactions/1.json
  def show
  end

  # GET /bank_transactions/new
  def new
    @bank_transaction = BankTransaction.new
  end

  # GET /bank_transactions/1/edit
  def edit
  end

  # POST /bank_transactions
  # POST /bank_transactions.json
  def create
    @bank_transaction = BankTransaction.new(bank_transaction_params)

    respond_to do |format|
      if @bank_transaction.save
        format.html { redirect_to @bank_transaction, notice: 'Bank transaction was successfully created.' }
        format.json { render :show, status: :created, location: @bank_transaction }
      else
        format.html { render :new }
        format.json { render json: @bank_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_transactions/1
  # PATCH/PUT /bank_transactions/1.json
  def update
    respond_to do |format|
      if @bank_transaction.update(bank_transaction_params)
        format.html { redirect_to @bank_transaction, notice: 'Bank transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @bank_transaction }
      else
        format.html { render :edit }
        format.json { render json: @bank_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_transactions/1
  # DELETE /bank_transactions/1.json
  def destroy
    @bank_transaction.destroy
    respond_to do |format|
      format.html { redirect_to bank_transactions_url, notice: 'Bank transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_transaction
      @bank_transaction = BankTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_transaction_params
      params.require(:bank_transaction).permit(:bank_account_id, :user_id, :amount, :transaction_type, :check_number)
    end

    def search scope
      scope = scope
      if params[:bank_account_id].presence
        scope = scope.where(bank_account_id: params[:bank_account_id])
      end
      if params[:transaction_type].presence
        scope = scope.where(transaction_type: params[:transaction_type])
      end
      scope
    end
end
