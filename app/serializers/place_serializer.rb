class PlaceSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :population, :german_pop, :af_am_pop, :mexican_pop

  attributes :percent_german do |place|
    ((place.german_pop.to_f / place.population.to_f) * 100).round(2)
  end

  attributes :percent_african_american do |place|
    ((place.af_am_pop.to_f / place.population.to_f) * 100).round(2)
  end

  attributes :percent_mexican do |place|
    ((place.mexican_pop.to_f / place.population.to_f) * 100).round(2)
  end
end