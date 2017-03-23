class TeamContest < ApplicationRecord
  belongs_to :team
  belongs_to :contest
  belongs_to :category

  validates :team_id,
            :contest_id,
            :category_id,
            presence: true
end
