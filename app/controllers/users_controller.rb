class UsersController < ApplicationController
	
	skip_before_filter :authorize
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_url # Back to home page with a new session
		else
			render "new" # Not sure about this line. More than likely this will change to what the form is 
		end
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end