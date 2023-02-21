class ApplicationController < ActionController::API
    include ActionController::Cookies


    wrap_parameters format: []

    def app_response(status_code: 200, message: "Success", body: nil, serializer: nil)
        if serializer
            render json: { 
                status: status_code, 
                message: message, 
                body: ActiveModelSerializers::SerializableResource.new(body, serializer: serializer) 
            },status: status_code
        else
        render json: {
            status: status_code,
            message: message,
            body: body
        }, status: status_code
    end
end
end
