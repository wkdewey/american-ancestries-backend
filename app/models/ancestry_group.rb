class AncestryGroup < ApplicationRecord
  has_many :place_ancestry_groups
  has_many :places, through: :place_ancestry_groups

  @@us_pop = 328239523

  def national_percent
    ((self.national_pop.to_f / @@us_pop.to_f) * 100).round(2)
  end
end