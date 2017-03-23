FactoryGirl.define do
  factory :user_team do
    user_id          { rand(100) }
    team_id          { rand(100) }
    external_role_id { rand(100) }
  end
end
