class PlaceAncestryGroup < ApplicationRecord
  belongs_to :place
  belongs_to :ancestry_group
end