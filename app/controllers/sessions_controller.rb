class SessionsController < ApplicationController

    def create
        client = Client.find_by(name: params[:name])
        if client&.authenticate(params[:password])
            session[:client_id] = client.id
            render json: client, status: :created
        else
            render json: { error: "Invalid username or password" }, status: :unauthorized
        end
    end

    def destroy
        session.delete :client_id
        head :no_content
    end

end
