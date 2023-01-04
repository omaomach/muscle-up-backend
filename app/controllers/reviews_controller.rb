class ReviewsController < ApplicationController

    before_action :authorize
	def index
		render json: Review.all
	end

	def create
		client = Client.find(session[:client_id]) 
		review = Review.create!(client_id: client.id, review: review_params[:review])
		render json: review, status: :created
	end

	private
	def review_params
		params.permit(:review)
	end

	def authorize
		return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
	end

end
