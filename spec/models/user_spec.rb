require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryGirl.create(:user)
  end

  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end
  end

  describe "validations" do
    it "cannot be created without first_name, last_name, phone number" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without first_name, last_name, phone number" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without first_name, last_name, phone number" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    it 'requries the phone attr to only contain integers' do
    @user.phone = 'mygreatstring'
    expect(@user).to_not be_valid
    end

    it 'requries the phone attr to only have 10 characters' do

    end
  end

  describe "custome name methods" do
    it 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq("SNOW, JON")
    end
  end
end
