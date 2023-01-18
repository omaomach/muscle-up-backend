class TrainersController < ApplicationController

    def index
        trainers = Trainer.all 
        render json: trainers, status: 200
    end

    def create
        trainer = Trainer.create!(name: trainer_params[:name], age: trainer_params[:age], email: trainer_params[:email], phone_number: trainer_params[:phone_number], image: trainer_params[:image]) 
        render json: trainer, status: :created
    end

    def destroy
        trainer = Trainer.find_by(:id)
        trainer.destroy
        render json: {}
    end

    private

    def trainer_params
		params.permit(:name, :age, :email, :phone_number, :image)
	end

end
