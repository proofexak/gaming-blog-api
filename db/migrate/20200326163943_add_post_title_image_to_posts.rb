class AddPostTitleImageToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :title_image, :string
  end
end
