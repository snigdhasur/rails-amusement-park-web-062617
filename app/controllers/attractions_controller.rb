class AttractionsController < ApplicationController

	def index
		@attractions = Attraction.all
	end 

	def show
		@user = User.find_by(id: session[:user_id]) 
		@attraction = Attraction.find(params[:id])
	end 

	def new
	end 

	def edit 
		@attraction = Attraction.find(params[:id])
	end 

	def create 
		@attraction = Attraction.create(attraction_params)
		redirect_to attraction_path(@attraction)
	end 


	private 
	def attraction_params
		params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :tickets, :min_height)
	end

end 