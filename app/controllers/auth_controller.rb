class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @client = Client.find_by(name: client_login_params[:name])
        #User#authenticate comes from BCrypt
        if @client && @client.authenticate(client_login_params[:password])
          # encode token comes from ApplicationController
          token = encode_token({ client_id: @client.id })
          render json: { client: ClientSerializer.new(@client), jwt: token }, status: :accepted
        else
          render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
      end
    
      private
    
      def client_login_params
        # params { user: {username: 'Chandler Bing', password: 'hi' } }
        params.permit(:name, :password)
    end
end
