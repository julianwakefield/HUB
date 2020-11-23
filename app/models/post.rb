class Post < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :comments
end
