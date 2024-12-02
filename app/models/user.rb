class User < ApplicationRecord
  # Validations
  validates :username, presence: true, uniqueness: true, length: { in: 6..30 }

  # Associations
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
