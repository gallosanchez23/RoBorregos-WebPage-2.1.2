class Team < ApplicationRecord
  has_many :user_teams
  has_many :team_contests
  has_many :external_roles, :through => :user_teams
  has_many :users, :through => :user_teams
  has_many :categories, :through => :team_contests
  has_many :contests, :through => :team_contests

  validates :name, :year, presence: true
end
