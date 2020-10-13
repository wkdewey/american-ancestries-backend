class Api::V1::PlacesController < ApplicationController
  def index
    places = Place.all
    render json: places
  end

  def show
    place = Place.find_by(id: params[:id])
    render json: place
  end
end