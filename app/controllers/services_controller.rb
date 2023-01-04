class ServicesController < ApplicationController

    def index
		render json: Service.all
	end

end
