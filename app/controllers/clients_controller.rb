class ClientsController < ApplicationController
    # skip_before_action :authorized, only: [:create, :index]

    def index
      render json: Client.all
    end

    def profile 
        render json: { client: ClientSerializer.new(current_client) }, status: :accepted
    end
    
    def create
        # byebug
        @client = Client.create!(client_params)
        if @client.valid?
            @token = encode_token(client_id: @client_id)
            render json: { client: ClientSerializer.new(@client), jwt: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :unprocessable_entity
        end
    end

    # def show 
    #     client = Client.find_by(id: session[:client_id])
    #     # render json: client
    #     if client
    #         render json: client
    #     else
    #         render json: { error: "Not authorized" }, status: :unauthorized
    #     end
    # end

    private
    def client_params
      params.permit(:name, :email, :phone_number, :password, :password_confirmation, :trainer_id, :diet_id)
    end

end
