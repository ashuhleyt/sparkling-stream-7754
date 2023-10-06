FactoryBot.define do 
  factory :recipe do 
    name { Faker::Food.dish }
    complexity { Faker::Number.between(from: 1, to: 10) }
    genre { Faker::Food.ethnic_category }
  end
end