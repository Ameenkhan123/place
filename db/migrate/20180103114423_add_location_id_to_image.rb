class AddLocationIdToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :location_id, :integer
    add_index :images, :location_id
  end
end
