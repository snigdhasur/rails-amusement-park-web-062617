class SessionsController < ApplicationController

	def new
	end 

	def create
		@user = User.find_by(name: params[:user][:name])
		if @user && @user.authenticate(params[:user][:password])
			session[:user_id] = @user.id 
			redirect_to user_path(@user)
		else 
			flash[:sign_in_error_message] = 'Nice try. Please try your username and password combination again or sign up for a new account.'
			redirect_to '/'
		end
	end 

	def destroy
		session.clear
		redirect_to '/'
	end 

end 


# @user = User.create(user_params)
# 		session[:user_id] = @user.id
# 		redirect_to user_path(@user)