class CreateUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :uploads do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.string :image
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end
