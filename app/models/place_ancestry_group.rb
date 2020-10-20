class PlaceAncestryGroup < ApplicationRecord
  belongs_to :place
  belongs_to :ancestry_group

  def percent
    ((self.population.to_f/self.place.population.to_f) * 100).round(2)
  end
end