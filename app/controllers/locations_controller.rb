class LocationsController < ApplicationController
	  skip_before_action :verify_authenticity_token
	def index
	@locations = Location.all
	# @images = Image.all
       if params[:location].present?
    @locations = Location.near(params[:location], 50, :order => :distance)
  else
    @locations = Location.all
  end
	end
	def new
		@location = Location.new
	end
	def create
		@location = Location.new(location_params)

		if @location.save
			redirect_to @location
		else
			render 'new'
		end
	end
	def show
		@location = Location.find(params[:id])
@images =Image.all
end
	def edit
		@location = Location.find(params[:id])
	end
	def update
		@location= Location.find(params[:id])
		if @location.update(location_params)
			redirect_to @location
		else
			render 'edit'
		end
	end
	def destroy
		@location = Location.find(params[:id])
		@image = Image.find(params[:id])
    @image.destroy
		@location.destroy

		redirect_to locations_path
	end
	def new_release
  respond_to do |format|
    format.html
    format.js
  end
end
	private
	def location_params
		params.require(:location).permit(:name, :address,:description, :latitude,:longitude, images_attributes: [:id, :avatar, :imageable_type, :imageable_id, :_destroy])
	end
end
