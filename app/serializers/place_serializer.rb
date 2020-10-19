class PlaceSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :population, :place_ancestry_groups

end