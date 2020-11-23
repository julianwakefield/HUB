class Chat < ApplicationRecord
  belongs_to :game, optional: true
  has_many :messages
  has_many :users, :through => :link_to_conversation
end
