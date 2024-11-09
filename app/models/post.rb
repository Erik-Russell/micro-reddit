class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  # Validations
  validates :title, length: { in: 2..50 }, presence: true
  validates :body, presence: true, length: { in: 3..500, message: "must be at least 3 chars and less than 500 chars." }
end
