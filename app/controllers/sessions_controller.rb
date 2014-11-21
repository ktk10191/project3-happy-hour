class SessionsController < ApplicationController

	skip_before_filter :authorize

	def new

		# present empty login form
      @user = User.new
      @is_login = true
	end

	def create
		user = User.where(email: params[:user][:email]).first
		# first make sure we actually find a user
		# then see if user authenticates
		if user && user.authenticate(params[:user][:password])
			# sets the cookie to the browser
			session[:user_id] = user.id.to_s
			redirect_to root_url
		else
			# Add alert saying the login was incorrect. Either in the form or a popup
			# The two lines below are similar to what is in the users_controller. This will more than likely change as well. This is just an example
			flash.now.alert = "Email or password is invalid"
			redirect_to root_url

		end
	end

	def destroy
		# Kill our cookies!
		session[:user_id] = nil
		redirect_to root_url, :notice => "Logged out!"
	end
end