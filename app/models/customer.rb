class Customer < ApplicationRecord
    has_many :accounts
    has_many :debit_Cnumbers
    has_many :credit_Cnumbers
end