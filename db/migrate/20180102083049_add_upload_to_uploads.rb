class AddUploadToUploads < ActiveRecord::Migration[5.1]
  def change
    add_column :uploads, :upload, :string
  end
end
