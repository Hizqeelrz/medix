class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :account_title
      t.string :account_number
      t.string :iban
      t.integer :balance
      t.string :bank_name
      t.string :branch_name
      t.string :branch_address
      t.string :branch_city
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
