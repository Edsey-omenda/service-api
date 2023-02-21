class AccountsController < ApplicationController
    def index
        @accounts = Account.all

        render json: @accounts
    end

    def show
        @account = Account.find(params[:id])

        render json: @account
    end

    def create
        @account = Account.create!(account_params)
        if   @account.valid?
           app_response(status_code: 201, message: "Hi, #{@account.account_name} your #{@account.account_type} account has been created succesfully", body:   @account, serializer: AccountSerializer)
        else
            app_response(status_code: 422, message: "Invalid input", body:   @account.errors.full_messages)
        end
    end

    #Updates the account upon withdrawal or topups by focusing on the amount attribute
    def update
        @account = Account.find(params[:id])
        @account.update(amount_params)

        if   @account.valid?
            app_response(status_code: 201, message:"Hi, #{@account.account_name} Your #{@account.account_type} account has been updated!", body:   @account, serializer: AccountSerializer)
         else
             app_response(status_code: 422, message: "Invalid input", body:   @account.errors.full_messages)
         end
    end

    private

    def account_params
        params.permit( :customer_id, :account_number, :account_name, :debit_Cnumber, :credit_Cnumber, :account_type, :amount)
    end

    def amount_params
        params.permit(:amount)
    end
end
