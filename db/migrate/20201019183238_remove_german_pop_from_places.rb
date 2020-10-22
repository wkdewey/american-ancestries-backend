class RemoveGermanPopFromPlaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :places, :german_pop, :integer
  end
end
