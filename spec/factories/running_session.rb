FactoryBot.define do
  factory :running_session do
    distance { Faker::Number.number(digits: 2) }
    duration { Faker::Number.number(digits: 2) }
    start_time { Faker::Number.number(digits: 12) }
    goal { Faker::Number.number(digits: 2) }
    avg_pace { Faker::Number.number(digits: 2) }
    avg_speed { Faker::Number.number(digits: 2) }
    association :user
  end
end
