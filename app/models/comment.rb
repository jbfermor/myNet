class Comment < ApplicationRecord
  belongs_to :post
  has_many :likes, as: :likable, dependent: :destroy
  delegate :user, :to => :post, :allow_nil => true
end
