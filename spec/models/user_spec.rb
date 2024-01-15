require 'rails_helper'

RSpec.describe User, type: :model do

  describe "validations" do
    subject { build(:user) }
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end 
end
