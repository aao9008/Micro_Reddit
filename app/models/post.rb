class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 6..300 }
  validates :content, presence: true, length: { maximum: 40000 }

  belongs_to :user
  has_many :comments, dependent: :destroy
end
