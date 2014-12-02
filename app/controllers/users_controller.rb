class UsersController < ApplicationController
	
	skip_before_filter :authorize
	
	def index
		@user = User.new
		@users = User.all

	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id.to_s
			redirect_to root_url # Back to home page with a new session
		else
			redirect_to (:back)
		end
	end

private
	def user_params
		params.require(:user).permit(:email, :username, :password, :password_confirmation)
	end
end