class AncestryGroup < ApplicationRecord
  has_many :place_ancestry_groups
  has_many :places, through: :place_ancestry_groups
end