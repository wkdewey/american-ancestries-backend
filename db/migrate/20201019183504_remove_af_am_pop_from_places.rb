class RemoveAfAmPopFromPlaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :places, :af_am_pop, :integer
  end
end
