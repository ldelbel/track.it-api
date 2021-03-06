FactoryBot.define do
  factory :running_session do
    distance { Faker::Number.number(digits: 4) }
    start_time { Faker::Number.number(digits: 12) }
    finish_time { Faker::Number.number(digits: 12) }
    avg_pace { Faker::Number.number(digits: 2) }
    avg_speed { Faker::Number.number(digits: 2) }
    association :user
  end
end