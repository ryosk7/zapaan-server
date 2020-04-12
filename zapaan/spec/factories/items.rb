FactoryBot.define do
  factory :item do
    name { Faker::Name.name }
    done { false }
    todo
  end
end