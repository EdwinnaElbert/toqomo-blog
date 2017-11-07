FactoryBot.define do
  sequence(:email) do |n|
    "user#{n}@test.com"
  end
  sequence(:name) do |n|
    Faker::Name.name
  end
  factory :user do
    email
    name
    password "123456789"
    confirmed_at Time.now
  end
end
