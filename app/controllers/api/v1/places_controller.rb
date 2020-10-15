class Api::V1::PlacesController < ApplicationController
  def index
    places = Place.all
    render json: PlaceSerializer.new(places)
  end

  def show
    place = Place.find_by(id: params[:id])
    render json: PlaceSerializer.new(place)
  end

  def create
    
  end
end