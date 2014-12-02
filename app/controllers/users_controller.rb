class UsersController < ActionController::Base

def create
	  user_email = :email
	  user_pass  = :password
	  password_digest = "NOT REALLY"
	  @user = User.create( email:user_email, password_digest:password_digest )
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:email, :password, :avatar)
	end

end