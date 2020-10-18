class CreateAncestryGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :ancestry_groups do |t|
      t.string :name
      t.integer :national_pop
    end
  end
end
