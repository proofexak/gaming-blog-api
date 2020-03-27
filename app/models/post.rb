class Post < ApplicationRecord
  mount_uploader :title_image, PostTitleImageUploader

  validates :title, :content, :description, presence: true
end