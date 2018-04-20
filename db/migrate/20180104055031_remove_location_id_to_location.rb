class RemoveLocationIdToLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :location_id, :integer
  end
end
