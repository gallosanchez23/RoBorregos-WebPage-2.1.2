FactoryGirl.define do
  factory :activity do
    name        { 'TMR 2016' }
    year        { rand(2000) }
    description { FFaker::Lorem.phrase }
    starts_on   { FFaker::Time.date }
    ends_on     { FFaker::Time.date }
    city        { FFaker::Address.city }
    country     { FFaker::Address.country }
  end

  factory :administrative_activity, parent: :activity do |activity|
    activity_type { 'Administrativa' }
  end
end
