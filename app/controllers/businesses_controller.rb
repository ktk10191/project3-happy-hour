class BusinessesController < ApplicationController
  
  skip_before_filter :authorize
  
  def index
    @business = Business.new
    @users = Business.all

  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      redirect_to root_url # Back to home page with a new session
    else
      redirect_to (:back)
    end
  end

private
  def business_params
    params.require(:business).permit(:business_name, :phone_number, :setting)
  end
end