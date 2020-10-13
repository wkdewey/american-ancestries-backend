class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :population
      t.integer :german_pop
      t.integer :af_am_pop
      t.integer :mexican_pop
    end
  end
end
