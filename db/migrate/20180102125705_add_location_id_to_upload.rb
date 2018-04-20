class AddLocationIdToUpload < ActiveRecord::Migration[5.1]
  def change
    add_column :uploads, :location_id, :integer
  end
end
