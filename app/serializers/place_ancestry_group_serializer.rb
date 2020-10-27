class PlaceAncestryGroupSerializer
  include FastJsonapi::ObjectSerializer

  attributes :population, :place, :ancestry_group

  attributes :percent do |item|
    item.percent
  end

  attributes :relative_to_national do |item|
    item.relative_to_national
    # (item.percent/item.ancestry_group.national_percent).round(2)
  end

  attributes :place_name do |item|
    item.place_name
  end

  attributes :ancestry_group_name do |item|
    item.ancestry_group_name
  end
end