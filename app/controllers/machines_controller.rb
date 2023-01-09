class MachinesController < ApplicationController

    def index
        machines = Machine.all 
        render json: machines, status: 200
    end

    def show
        machine = Machine.find(params[:id])
        render json: machine, status: 200
    end

end