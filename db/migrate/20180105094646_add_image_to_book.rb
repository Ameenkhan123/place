class AddImageToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :image, :attachment
  end
end
