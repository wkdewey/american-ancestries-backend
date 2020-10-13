class PlaceSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :population, :german_pop, :af_am_pop, :mexican_pop

  attributes :percent_german do |place|
    ((place.german_pop.to_f / place.population.to_f) * 100).round(2)
  end
end