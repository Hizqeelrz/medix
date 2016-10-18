json.extract! bank_transaction, :id, :bank_account_id, :user_id, :amount, :transaction_type, :check_number, :created_at, :updated_at
json.url bank_transaction_url(bank_transaction, format: :json)