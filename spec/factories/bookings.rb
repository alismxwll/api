FactoryGirl.define do
  factory :booking do
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
