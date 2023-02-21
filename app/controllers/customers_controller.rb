class CustomersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Customer.all,  status: :ok
    end

    def show
        customer = Customer.find(params[:id])
        if customer
          render json: customer, status: :ok 
        else
          render json: {error: "not found"}, status: :not_found
        end
    
   end

    def create
        customer = Customer.create!(customer_params)
        if customer.valid?
           app_response(status_code: 201, message: "Account created succesfully", body: customer, serializer: CustomerSerializer)
        else
            app_response(status_code: 422, message: "Invalid input", body: customer.errors.full_messages)
        end
    end

    def update
        customer = Customer.find(params[:id])
        customer.update(customer_params)
        if customer.valid?
            app_response(status_code: 201, message: "Account updated succesfully", body: customer, serializer: CustomerSerializer)
         else
             app_response(status_code: 422, message: "Invalid input", body: customer.errors.full_messages)
         end

        # render json: customer
    end


    private 
    def customer_params
        params.permit(:name, :account_type, :account_number, :email, :age, :contact)
    end

    def render_not_found_response
        render json: { error: "Customer Account not found" }, status: :not_found
      end
end
