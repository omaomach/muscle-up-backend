class ClientsController < ApplicationController

    def index
        clients = Client.all 
        render json: clients, status: 200
    end

end
