FactoryBot.define do
  factory :user do
    sequence(:id) { |n| n }
    sequence(:username) { |n| "User-#{n}" }
    sequence(:email) { |n| "User-#{n}@example.com" }
    password { 'password' }
    address { '12 some street city' }
  end
end