class DietsController < ApplicationController

    def index 
        diets = Diet.all 
        render json: diets, status: 200
    end

end
