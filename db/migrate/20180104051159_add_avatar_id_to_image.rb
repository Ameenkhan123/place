class AddAvatarIdToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :avatar_id, :integer
  end
end
