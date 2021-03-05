FactoryBot.define do
  factory :running_session do
    distance { Faker::Number.number(digits: 4) }
    datetime { Faker::Time.between(from: DateTime.now - 10, to: DateTime.now) }
    avg_pace { Faker::Number.number(10) }
    avg_speed { Faker::Number.number(10) }
    association :user
  end
end