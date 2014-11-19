class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :current_user

  # before_action :authorize

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  # def authorize
  #   redirect_to new_sessions_path if current_user.nil?
  # end


end
