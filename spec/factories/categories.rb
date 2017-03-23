FactoryGirl.define do
  factory :category do
    name        { 'Soccer Open' }
    description { FFaker::Lorem.phrase }
  end
end
