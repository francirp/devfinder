class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by_id(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new
    @location.name = params[:name]
    @location.neighborhood = params[:neighborhood]
    @location.street = params[:street]
    @location.city = params[:city]
    @location.state = params[:state]
    
    if @location.save
            redirect_to locations_url
          else
      render 'new'
    end
  end

  def edit
    @location = Location.find_by_id(params[:id])
  end

  def update
    @location = Location.find_by_id(params[:id])
    @location.name = params[:name]
    @location.neighborhood = params[:neighborhood]
    @location.street = params[:street]
    @location.city = params[:city]
    @location.state = params[:state]
    
    if @location.save
            redirect_to locations_url
          else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find_by_id(params[:id])
    @location.destroy
        redirect_to locations_url
      end
end
