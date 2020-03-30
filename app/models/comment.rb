class Comment < ApplicationRecord
  validates :nickname, :content, :post_id, presence: true
end