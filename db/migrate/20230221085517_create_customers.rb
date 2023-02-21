class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :account_type
      t.integer :account_number
      t.string :email
      t.integer :age
      t.string :contact

      t.timestamps
    end
  end
end
