class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.string :account_name
      t.integer :debit_Cnumber
      t.integer :credit_Cnumber
      t.string :account_type
      t.integer :amount
      t.references :customer, null: false, foreign_key:true

      t.timestamps
    end
  end
end
