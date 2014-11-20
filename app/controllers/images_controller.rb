class ImagesController < ApplicationController
  def index
  	@images = Image.all
  end

  def new
  	@images = Image.new
  end
  def create
    @images = Image.all
    @image = Image.new(image_params)

    if params[:image]
      if @image.save
        redirect_to new_image_path, notice: 'Photo uploaded.'
      else
        @image.errors.delete(:photo)
        render :new
      end
    else
      redirect_to new_image_path, alert: 'Photo cannot be blank.'
    end
  end

private
	def image_params
 	 	params.require(:image).permit(:photo) if params[:image]
	end
end