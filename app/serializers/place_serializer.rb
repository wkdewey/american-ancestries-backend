class PlaceSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :population, :german_pop, :af_am_pop, :mexican_pop
end