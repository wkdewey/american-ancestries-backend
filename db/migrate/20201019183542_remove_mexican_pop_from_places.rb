class RemoveMexicanPopFromPlaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :places, :mexican_pop, :integer
  end
end
