class AddImageableTypeImageableIdToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :imageable_type, :integer
    add_column :images, :imageable_id, :integer
  end
end
