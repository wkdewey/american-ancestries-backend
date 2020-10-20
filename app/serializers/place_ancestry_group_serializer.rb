class PlaceAncestryGroupSerializer
  include FastJsonapi::ObjectSerializer

  attributes :population, :place, :ancestry_group

  attributes :percent do |item|
    item.percent
  end

  attributes :relative_to_national do |item|
    (item.percent/item.ancestry_group.national_percent).round(2)
  end
end