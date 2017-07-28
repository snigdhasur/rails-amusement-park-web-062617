class RidesController < ApplicationController

	def create 
		user = User.find_by(id: params[:user][:id])
		attraction = Attraction.find_by(id: params[:attraction][:id])
		ride = Ride.new(user_id: user.id, attraction_id: attraction.id)
		flash[:message] = ride.take_ride
		redirect_to user
	end 

end 