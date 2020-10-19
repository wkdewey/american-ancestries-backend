class CreatePlaceAncestryGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :place_ancestry_groups do |t|
      t.references :place, null: false, foreign_key: true
      t.references :ancestry_group, null: false, foreign_key: true
      t.integer :population
    end
  end
end
