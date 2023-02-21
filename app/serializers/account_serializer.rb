class AccountSerializer < ActiveModel::Serializer
  attributes :id, :account_number, :account_name, :debit_Cnumber, :credit_Cnumber, :account_type, :amount
end
