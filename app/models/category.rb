class Category < ApplicationRecord
  has_many :team_contests
  has_many :teams, :through => :team_contests
  has_many :contests, :through => :team_contests

  validates :name, presence: true
end
