class AddLocationIdToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :location_id, :integer
  end
end
