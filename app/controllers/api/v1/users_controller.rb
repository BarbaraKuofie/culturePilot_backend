class Api::V1::UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, include: :collections
    end 

    def show 
        user = User.find(params[:id])
    end 

    def create 
        user = User.create(user_params)
        # byebug
        if user.valid?
            render json: user
        else 
            render json: {error: "username is already taken" }, status: :not_acceptable
        end   
    end 

    private
    
    def user_params
        params.require(:user).permit(:name, :username, :email, :password)
    end 

end
