class GamesILike < ApplicationRecord
  # belongs_to :game
  belongs_to :user
  has_many :games
end
