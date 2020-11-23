class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :games, :through => :post
end
