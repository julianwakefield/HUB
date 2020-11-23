class LinkToConversation < ApplicationRecord
  belongs_to :chat
  belongs_to :user
  has_many :messages, :through => :chat
  has_many :messages, :through => :user
  has_many :games_i_like, :through => :user
end
