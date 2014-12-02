class ApplicationController < ActionController::Base

  protect_from_forgery with: :null_session

  helper_method :current_user

  before_action :authorize

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  def authorize
    redirect_to new_session_path if current_user.nil?
  end

  def index
  end

end
