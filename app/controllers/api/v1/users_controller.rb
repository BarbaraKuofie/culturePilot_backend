class Api::V1::UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: @users, include: :tours
    end 

    def show 
        @user = User.find(params[:id])
    end 

    def create    
        @user = User.new(user_params)
        @user.image.attach(io: image_io, filename: image_name)
        if @user.valid?
            render json: @user
        else 
            render json: {error: "username is already taken" }, status: :not_acceptable
        end   
    end 

    private
    
    def user_params
        params.require(:user).permit(:id, :name, :username, :image, :email,  :password)
    end 

    def image_io 
        decoded_image = Base64.decode64(params[:user][:image])
        StringIO.new(decoded_image)
    end 

    def image_name
        params[:user][:file_name]
    end 

end
