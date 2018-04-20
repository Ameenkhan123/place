class RemoveAvatarIdToImage < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :avatar_id, :integer
  end
end
