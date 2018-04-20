class RemoveAvatarIdToLocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :avatar_id, :integer
  end
end
