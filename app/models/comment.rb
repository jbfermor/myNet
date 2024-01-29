class Comment < ApplicationRecord
  belongs_to :post
  has_many :likes, as: :likable
  delegate :user, :to => :post, :allow_nil => true
end
