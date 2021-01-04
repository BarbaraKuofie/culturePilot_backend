class API::V1::ToursController < ApplicationController

    def index
        @tours = Tour.all 
        render json: @tours, include: :artpieces
    end 

    def create 
        @tour= Tour.create(tour_params)
        if @tour.valid?
            render json: @tour
        else 
            render json: @tour.errors.full_messages
        end 
    end 

    def update 
        @tour = Tour.find(params[:id])

        #assigns new attributes to tours
        @tour.assign_attributes(tour_params)
        if @tour.valid?
            #saves the assigned updates to the database
            @tour.save 
            render json: @tour
        else 
            render json: @tour.errors.full_messages
        end 
        
    end 

    private

    def tour_params
        params.require(:tour).permit(:title, :subtitle, :cover_image, :description, :user_id)
    end 
end
