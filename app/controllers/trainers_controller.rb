class TrainersController < ApplicationController

    def index
        trainers = Trainer.all 
        render json: trainers, status: 200
    end

    def delete
        trainer = Trainer.find(params[:id])
        trainer.destroy
        render json: {}
    end
end
