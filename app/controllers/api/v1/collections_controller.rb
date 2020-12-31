class API::V1::CollectionsController < ApplicationController

    def index
        @collections = Collection.all 
        render json: @collections, include: :artpieces
    end 

    def create 
        @collection = Collection.create(collection_params)
        if @collection.valid?
            render json: @collection
        else 
            render json: @collection.errors.full_messages
        end 
    end 

    def update 
        @collection = Collection.find(params[:id])

        #assigns new attributes to collection
        @collection.assign_attributes(collection_params)
        if @collection.valid?
            #saves the assigned updates to the database
            @collection.save 
            render json: @collection
        else 
            render json: @collection.errors.full_messages
        end 
        
    end 

    private

    def collection_params
        params.require(:collection).permit(:title, :description, :user_id)
    end 
end
