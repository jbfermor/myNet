class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likable, dependent: :destroy

  scope :most_recent, -> { order(created_at: :desc)}
  # Ex:- scope :active, -> {where(:active => true)}
end
