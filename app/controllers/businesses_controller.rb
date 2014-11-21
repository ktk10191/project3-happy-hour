class BusinessesController < ApplicationController
  
  skip_before_filter :authorize
  
  def index
    if params[:id]
      business = business.find(params[:id])
    else
      businesses = business.all
      render json: businesses, status: 200
    end
  end

  def create
    business = Business.create(business_params)
    render json: planet, status: 201
    if business.save
      redirect_to root_url # Back to home page with a new session
    else
      redirect_to (:back)
    end
  end

private
  def business_params
    params.require(:business).permit(:business_name, :phone_number, :setting, :website, :business_address, :rating)
  end
end