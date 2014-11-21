class BusinessesController < ApplicationController
  
  skip_before_filter :authorize
  
  def index
    if params[:id]
      business = business.find(params[:id])
    else
      businesses = Business.all
      render json: businesses, status: 200
    end
  end

  def create
    business = Business.create(business_params)
    render json: planet, status: 201
  end

  def update
    business = Business.find(params[:id])
    business.update_attributes(planet_params)
    render nothing: true, status: 204
  end

  def destroy
    business = Business.find(params[:id])
    business.destroy
    render nothing: true, status: 204
  end

private
  def business_params
    params.require(:business).permit(:business_name, :phone_number, :setting, :website, :business_address, :rating)
  end
end