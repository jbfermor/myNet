FactoryBot.define do
  factory :comment do
    content { "MyString" }
    post
    user
  end
end
