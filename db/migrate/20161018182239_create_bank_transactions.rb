class CreateBankTransactions < ActiveRecord::Migration
  def change
    create_table :bank_transactions do |t|
      t.references :bank_account, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :amount
      t.integer :transaction_type
      t.string :check_number

      t.timestamps null: false
    end
  end
end
