class SupplementsController < ApplicationController

    def index
		render json: Supplement.all
	end

end
