class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload)
        # payload => { beef: 'steak' }
        JWT.encode(payload, 'my_s3cr3t')
        # jwt string: "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
    end

    def auth_header
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            # headers: { 'Authorization': 'Bearer <token>' }
            begin
                JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
                # JWT.decode => [{ "beef"=>"steak" }, { "alg"=>"HS256" }]
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
            # or nil if we can't decode the token
            client_id = decoded_token[0]['client_id']
            @client = Client.find_by(id: client_id)
        end
    end

    def logged_in?
        !!current_client
        # Recall that a Ruby object/instance is 'truthy': !!user_instance #=> true and nil is 'false-y': !!nil #=> false. Therefore logged_in? will just return a boolean depending on what our current_user method returns.
    end

    def authorized
        render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
    end

end
