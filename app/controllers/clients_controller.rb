class ClientsController < ApplicationController

    def index
        clients = Client.all 
        render json: clients, status: 200
    end

    def create
        client = Client.create!(client_params)
        if client.valid?
            session[:client_id] = client.id
            render json: client, status: 200
        else
            render json: { errors: client.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show 
        client = Client.find_by(id: session[:client_id])
        # render json: client
        if client
            render json: client
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    private

    def client_params
      params.permit(:name, :email, :phone_number, :password, :password_confirmation, :trainer_id, :diet_id)
    end

end
