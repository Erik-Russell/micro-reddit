class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  # Validations
  validates :title, length: { minimum: 2 }, presence: true
end
