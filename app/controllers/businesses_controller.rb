class BusinessesController < ApplicationController
<<<<<<< HEAD

  def index
     if params[:id]
      business = business.find(params[:id])
    else
      businesses = Business.all
=======
  
  skip_before_filter :authorize
  
  def index
    if params[:id]
      business = business.find(params[:id])
    else
      businesses = business.all
>>>>>>> master
      render json: businesses, status: 200
    end
  end

  def create
    business = Business.create(business_params)
<<<<<<< HEAD
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
=======
    render json: planet, status: 201
    if business.save
      redirect_to root_url # Back to home page with a new session
    else
      redirect_to (:back)
    end
>>>>>>> master
  end

private
  def business_params
<<<<<<< HEAD
    params.require(:business).permit(:business_name, :phone_number, :website, :business_address, :rating)
=======
    params.require(:business).permit(:business_name, :phone_number, :setting, :website, :business_address, :rating)
>>>>>>> master
  end
end