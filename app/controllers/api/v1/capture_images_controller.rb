class Api::V1::CaptureImagesController < ApplicationController

    def index 
        images = CaptureImage.all
        render json: images
    end 

    def show 
        user = CaptureImage.find(params[:id])
    end 

    
    def create 
       image = CaptureImage.create(capture_image_params)
        if image.valid?
            render json: { user: CaptureImageSerializer.new(image) }, status: :created 
        else 
            render json: {error: "sorry, cant find image" }, status: :not_acceptable
        end   
    end 

    def capture_image_params

        params.permit(:image)
    end 

end
