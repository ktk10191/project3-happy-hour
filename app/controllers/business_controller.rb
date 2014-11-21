class BusinessesController < ApplicationController
  
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      # Add alert that says the business to be updated
      redirect_to root_url
    else
      # Add Alert that says the business fields were not put in correctly. This will more than likely have the form tell them that it is invalid
      redirect_to(:back)
    end
    private
      def business_params
        # Need to add more params later for businesses
        params.require(:business).permit(:business_name, :setting)
      end
 end

