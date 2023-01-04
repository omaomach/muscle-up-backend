class ExercisesController < ApplicationController

    def index 
        exercises = Exercise.all
        render json: exercises, status: 200
    end

end
