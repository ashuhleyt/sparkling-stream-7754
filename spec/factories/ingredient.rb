FactoryBot.define do 
  factory :ingredient do 
    name { Faker::Food.description }
    cost { Faker::Number.between(from: 1, to: 10) }
  end
end