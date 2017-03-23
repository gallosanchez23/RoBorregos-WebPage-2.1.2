FactoryGirl.define do
  factory :external_role do
    name        { 'Programador' }
    description { FFaker::Lorem.phrase }
  end
end