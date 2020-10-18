class Api::V1::AncestryGroupsController < ApplicationController
  def index
    ancestry_groups = AncestryGroup.all
    render json: AncestryGroupSerializer.new(ancestry_groups)
  end

  def show
    ancestry_groups = AncestryGroup.find_by(id: params[:id])
    render json: AncestryGroupSerializer.new(ancestry_groups)
  end

end