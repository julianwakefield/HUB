class Post < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :comments
  has_one_attached :photo

end
