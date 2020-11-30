class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments
  has_many :user_games
  has_many :messages
  has_many :chats, :through => :link_to_conversation
  has_many :games, :through => :user_games
  has_one_attached :photo
end
