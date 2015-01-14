class BusinessesController < ApplicationController  
  
  def index
    businesses = Business.all
    render json: businesses, status: 200
  end

  def create
    business = Business.create(business_params)
    render json: business, status: 201
  end

  def update
    business = Business.find(params[:id])
    business.update_attributes(business_params)
    render nothing: true, status: 204
  end

  def destroy
    business = Business.find(params[:id])
    business.destroy
    render nothing: true, status: 204
  end

private
  def business_params
    params.require(:business).permit(:business_name, :street_no, :street_name, :city, :zipcode, :state, :rating, :happy_hour_time)
  end
end