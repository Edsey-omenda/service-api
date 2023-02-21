class Account < ApplicationRecord
    belongs_to :customer
    has_many :debit_Cnumbers
    has_many :credit_Cnumbers
end