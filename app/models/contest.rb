class Contest < ApplicationRecord
  has_many :team_contests
  has_many :teams, :through => :team_contests
  has_many :categories, :through => :team_contests

  validates :name,
            :year,
            :starts_on,
            :ends_on,
            :city,
            :country,
            :contest_type,
            presence: true

  enum contest_type: [:Interno,
                      :Regional,
                      :Nacional,
                      :Internacional]
end
