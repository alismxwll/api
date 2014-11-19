require 'rails_helper'

RSpec.describe Booking, :type => :model do
  it 'should have a factory' do
    expect(FactoryGirl.build(:booking)).to be_valid
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end
end
