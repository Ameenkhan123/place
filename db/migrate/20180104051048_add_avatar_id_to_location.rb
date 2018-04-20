class AddAvatarIdToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :avatar_id, :integer
  end
end
