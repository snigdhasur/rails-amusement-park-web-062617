require 'pry'
class UsersController < ApplicationController

	# before_action :logged_in?, only: [:show, :edit]

	def new 
	end 


	def create 

		@user = User.create(user_params)
		session[:user_id] = @user.id

		redirect_to user_path(@user)
	end 

	def edit
	end 

	def welcome
	end

	def show
		if logged_in?
			@user = User.find(params[:id])
		else
			redirect_to '/'
		end
	end 

	private
	def user_params
		params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height, :admin)
	end

end 