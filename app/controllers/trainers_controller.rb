class TrainersController < ApplicationController

    def index
        trainers = Trainer.all 
        render json: trainers, status: 200
    end

end
