class Post < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :photo
end
