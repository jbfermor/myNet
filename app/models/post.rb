class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  has_many :likes, as: :likable

  scope :most_recent, -> { order(created_at: :desc)}
  # Ex:- scope :active, -> {where(:active => true)}
end
