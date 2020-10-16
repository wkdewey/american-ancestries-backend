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
    place = Place.new(place_params)
    if place.save
      render json: PlaceSerializer.new(place), status: :accepted
    else
      render json: { errors: place.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def place_params
    params.require(:place).permit(:name, :population, :german_pop, :af_am_pop, :mexican_pop)
  end

end