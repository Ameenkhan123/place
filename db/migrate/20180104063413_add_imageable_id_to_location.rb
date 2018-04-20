class AddImageableIdToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :imageable_id, :integer
  end
end
