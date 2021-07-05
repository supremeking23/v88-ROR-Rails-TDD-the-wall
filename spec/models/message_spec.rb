require 'rails_helper'

RSpec.describe Message, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "should be a valid product" do 
    expect(build(:message , user: build(:user))).to be_valid # build(:product) simplified
  end

  context 'With invalid attributes' do
    it 'should not save if message field is blank' do
      expect(build(:message,message:"")).to be_invalid
    end

    it 'should not save if username field is less than 5 characters long' do
      expect(build(:message,message:"12345678910")).to be_valid
    end
  end
end
