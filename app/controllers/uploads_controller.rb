class UploadsController < ApplicationController
	  skip_before_action :verify_authenticity_token

	def index
     @uploads = Upload.all
         @upload = Upload.new
   end
  #  def new
  #   @upload = Upload.new
  #   # @location = Location.new
  # end
def show
      @upload = Upload.find(params[:id])
end
  def update
    @upload= Upload.find(params[:id])
    if @upload.update(upload_params)
      redirect_to root_path
    else
    end
  end

  def create
    @upload = Upload.new(upload_params)
    if @upload.save
    redirect_to root_path
      # render json: { message: "success", fileID: @upload.id }, :status => 200
    else
      #  you need to send an error header, otherwise Dropzone
      #  will not interpret the response as an error:
      # render json: { error: @upload.errors.full_messages.join(',')}, :status => 400
    end     
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy

    redirect_to root_path
  end

  private
  def upload_params
    params.require(:upload).permit(:avatar, :image)
  end
end
