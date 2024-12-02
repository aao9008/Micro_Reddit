class Comment < ApplicationRecord
  validates :content, presence: true, length: { maximum: 10000 }

  belongs_to :post
  belongs_to :user
end
