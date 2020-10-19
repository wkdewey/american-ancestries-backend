class PlaceAncestryGroup < ApplicationRecord
  has_many :place_ancestry_groups
  has_many :ancestry_groups, through: :place_ancestry_groups
end