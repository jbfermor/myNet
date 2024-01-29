class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :bio
  has_many :posts
  has_many :friend_requests
  has_many :pending_friend_requests, -> { where confirmed: false }, class_name: "FriendRequest", foreign_key: "friend_id"

  def friends
    friends_i_sent_request = FriendRequest.where(user_id: id, confirmed: true).pluck(:friend_id)
    friends_i_got_request = FriendRequest.where(friend_id: id, confirmed: true).pluck(:user_id)
    ids = friends_i_sent_request + friends_i_got_request
    User.where(id: ids)
  end

  def friend_with?
    FriendRequest.confirmed_record?(id, user.id)
  end

  def send_request(user)
    friend_requests.create(friend_id: user.id)
  end
  
end
