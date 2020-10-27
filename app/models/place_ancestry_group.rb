class PlaceAncestryGroup < ApplicationRecord
  belongs_to :place
  belongs_to :ancestry_group

  def percent
    ((self.population.to_f/self.place.population.to_f) * 100).round(2)
        
  end

  def relative_to_national
    (self.percent/self.ancestry_group.national_percent).round(2)
  end

  def place_name
    self.place.name
  end

  def ancestry_group_name
    self.ancestry_group.name
  end
end