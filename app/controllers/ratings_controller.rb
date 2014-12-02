class RatingsController < ApplicationController  
  
  def index
    ratings = Rating.all
    render json: rating, status: 200
  end

  def create
    rating = Rating.create(rating_params)
    render json: rating, status: 201
  end

  def update
    rating = Rating.find(params[:id])
    rating.update_attributes(rating_params)
    render nothing: true, status: 204
  end

  def destroy
    rating = Rating.find(params[:id])
    rating.destroy
    render nothing: true, status: 204
  end

private
  def rating_params
    params.require(:rating).permit(:rating, :user_id, :business_id)
  end
end