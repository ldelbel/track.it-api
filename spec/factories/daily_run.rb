FactoryBot.define do
  factory :daily_run do
    date { Faker::Lorem.word }
    association :user
  end
end
