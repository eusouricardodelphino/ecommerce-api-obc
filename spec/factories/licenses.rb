FactoryBot.define do
  factory :license do
    sequence(:key) { |n| "My License #{n}" }
    game
  end
end
