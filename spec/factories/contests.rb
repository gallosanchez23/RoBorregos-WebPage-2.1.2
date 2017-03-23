FactoryGirl.define do
  factory :contest do
    name        { 'TMR 2016' }
    year        { rand(2000) }
    description { FFaker::Lorem.phrase }
    starts_on   { FFaker::Time.date }
    ends_on     { FFaker::Time.date }
    city        { FFaker::Address.city }
    country     { FFaker::Address.country }
  end

  factory :international_activity, parent: :contest do |contest|
    activity_type { 'Internacional' }
  end
end
