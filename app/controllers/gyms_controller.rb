class GymsController < ApplicationController

    def index 
        gyms = Gym.all 
        render json: gyms, status: 200
    end

end
