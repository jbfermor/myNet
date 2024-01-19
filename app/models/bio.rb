class Bio < ApplicationRecord
  belongs_to :user
  validates :nickname, presence: true, uniqueness: true
  validates :birth_date, presence: true

  has_one_attached :avatar

  def self.search(search, current_user)
    if search
      requested_users = []
      users_found_by_nickname = Bio.where("lower(nickname) like ?", "%#{search}%")
      users_found_by_name = Bio.where("lower(name) like ?", "%#{search}%")
      users_found_by_surname = Bio.where("lower(surname1) like ?", "%#{search}%")
      result = [users_found_by_nickname, users_found_by_name, users_found_by_surname]
      result.each do |r|
        if r.count > 0 
          r.each do |user|
            if user != current_user.bio
              requested_users << user unless requested_users.include?(user)
            end
          end
        end
      end
      requested_users
    end
  end
end
