class Post < ApplicationRecord
  validates :title, :content, :description, presence: true
end