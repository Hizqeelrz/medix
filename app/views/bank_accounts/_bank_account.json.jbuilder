json.extract! bank_account, :id, :account_title, :account_number, :iban, :balance, :bank_name, :branch_name, :branch_address, :branch_city, :user_id, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)