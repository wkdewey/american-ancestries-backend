class PlaceSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :population
  
  attribute :place_ancestry_groups do |place|
    PlaceAncestryGroupSerializer.new(place.place_ancestry_groups).as_json["data"]
  end
end