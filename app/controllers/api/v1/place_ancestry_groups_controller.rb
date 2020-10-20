class Api::V1::PlaceAncestryGroupsController < ApplicationController
  def index
    place_ancestry_groups = PlaceAncestryGroup.all
    render json: PlaceAncestryGroupSerializer.new(place_ancestry_groups)
  end

  def show
    place_ancestry_group = PlaceAncestryGroup.find_by(id: params[:id])
    render json: PlaceAncestryGroupSerializer.new(place_ancestry_group)
  end


end