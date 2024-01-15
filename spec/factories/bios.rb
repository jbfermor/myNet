FactoryBot.define do
  factory :bio do
    nickname { "MyString" }
    name { "MyString" }
    surname1 { "MyString" }
    surname2 { "MyString" }
    birth_date { Date.new(2000, 1, 1) }
    address { "MyString" }
    city { "MyString" }
    province { "MyString" }
    postal_code { "MyString" }
    country { "MyString" }
    phone { "MyString" }
    user
  end
end
