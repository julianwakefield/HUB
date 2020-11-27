class Game < ApplicationRecord
  has_many :chats, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :user_games, dependent: :destroy
  # has_many :user_chats, :through => :chat
  has_many :comments, through: :posts
  # has_many :messages, :through => :chat
  has_one_attached :photo
end
