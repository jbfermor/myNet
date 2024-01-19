FactoryBot.define do
  factory :friend_request do
    user { nil }
    friend_id { "MyString" }
    confirmed { false }
  end
end
