require 'rails_helper'

RSpec.describe "bios/index", type: :view do
  let (:user) { create :user }
  before(:each) do
    assign(:bios, [
      Bio.create!(
      nickname: "MyString1",
      name: "MyString",
      surname1: "MyString",
      surname2: "MyString",
      birth_date: Date.new(2000, 1, 1),
      address: "MyString",
      city: "MyString",
      province: "MyString",
      postal_code: "MyString",
      country: "MyString",
      phone: "MyString",
      user: user
      )
    ])
  end

end
