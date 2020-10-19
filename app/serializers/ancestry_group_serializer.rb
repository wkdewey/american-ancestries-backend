class AncestryGroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :national_pop, :place_ancestry_groups

  @@us_pop = 328239523

  attributes :national_percent do |group|
    ((group.national_pop.to_f / @@us_pop.to_f) * 100).round(2)
  end
end
