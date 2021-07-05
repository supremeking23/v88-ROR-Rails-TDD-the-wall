require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context 'With valida attributes' do
    it 'should save' do
      expect(build(:user)).to be_valid
    end
  end

  context 'With invalid attributes' do
    it 'should not save if username field is blank' do
      expect(build(:user,username:"")).to be_invalid
    end

    it 'should not save if username field is less than 5 characters long' do
      expect(build(:user,username:"1234567")).to be_valid
    end
  end
end
