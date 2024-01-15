class Bio < ApplicationRecord
  belongs_to :user
  validates :nickname, presence: true, uniqueness: true
  validates :birth_date, presence: true
end
