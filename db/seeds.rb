
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

example = User.create!(name: 'example');

30.times do |i|
    start_time = (Time.now - i.day).to_i * 1000
    duration = rand(0.5..2.0).round(2)
    distance = rand(1.0..6.0).round(2)
    goal = distance + rand(0.0..1.0).round(2)
    avg_speed = (distance / duration).round(2)
    avg_pace = (duration / distance).round(2)
    
    example.running_sessions.create!(
        distance: distance,
        start_time: start_time,
        duration: duration,
        goal: goal,
        avg_speed: avg_speed,
        avg_pace: avg_pace
    )
end 
