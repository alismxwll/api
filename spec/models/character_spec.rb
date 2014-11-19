require 'rails_helper'

RSpec.describe Character, :type => :model do
  it 'should have a factory' do
    expect(FactoryGirl.build(:character)).to be_valid
  end

  context 'validations' do
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:file) }
  end
end
