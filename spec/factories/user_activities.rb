FactoryGirl.define do
  factory :user_activity do
    user_id     { rand(100) }
    activity_id { rand(100) }
  end
end
