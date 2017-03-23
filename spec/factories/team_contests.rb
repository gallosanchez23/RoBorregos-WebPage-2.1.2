FactoryGirl.define do
  factory :team_contest do
    team_id     { rand(100) }
    contest_id  { rand(100) }
    category_id { rand(100) }
  end
end
