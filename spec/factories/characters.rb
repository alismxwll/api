FactoryGirl.define do
  factory :character do
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
    file { Faker::Avatar.image }
  end
end
