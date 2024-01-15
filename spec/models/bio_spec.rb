require 'rails_helper'

RSpec.describe Bio, type: :model do
  subject { build(:bio) }

  describe "validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a nickname" do
      bio = subject
      bio.nickname = nil
      expect(bio).not_to be_valid
    end

    it "is not valid without a nickname" do
      bio = subject
      bio.birth_date = nil
      expect(bio).not_to be_valid
    end

  end 
end
