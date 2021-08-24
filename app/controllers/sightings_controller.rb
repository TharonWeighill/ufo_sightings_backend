class SightingsController < ApplicationController
    before_action :set_sighting, only: [:show, :update, :destroy]
    before_action :unauthorized_check, only: [:update, :destroy]
  
   
    def index
      @sighting = Sighting.all
  
      render json: @sighting
    end
  

    def show
      render json: @sighting
    end
  
    
    def create
      @sighting = Sighting.new(sighting_params)
  
      if @sighting.save
        render json: @sighting, status: :created, location: @sighting
      else
        render json: @sighting.errors, status: :unprocessable_entity
      end
    end
  
   
    def update
      if @sighting.update(sighting_params)
        render json: @sighting
      else
        render json: @sighting.errors, status: :unprocessable_entity
      end
    end
  
   
    def destroy
      @sighting.destroy
    end
  
    private

      def set_sighting
        @sighting = Sighting.find(params[:id])
      end
  
     
      def sighting_params
        params.require(:sightings).permit(:city, :comments, :date_posted, :latitude, :longitude)
      end
  end
  