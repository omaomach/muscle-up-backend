class MachinesController < ApplicationController

    def index
        machines = Machine.all 
        render json: machines, status: 200
    end

    def show
        machine = Machine.find(params[:id])
        render json: machine, status: 200
    end
    def create
        machine = Machine.create!(name: machine_params[:name], image: machine_params[:image], number: machine_params[:number], condition: machine_params[:condition]) 
        render json: machine, status: :created
    end

    def destroy
        machine = Machine.find(params[:id])
        machine.destroy
        render json: {}
    end
private

    def machine_params
        params.permit(:name, :image, :number, :condition)
    end
end
