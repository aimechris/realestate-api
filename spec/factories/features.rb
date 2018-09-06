FactoryBot.define do
  factory :feature do
    feature_name { Faker::Name.name }
  end
end
