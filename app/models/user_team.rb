class UserTeam < ApplicationRecord
  belongs_to :user
  belongs_to :team
  belongs_to :external_role

  validates :user_id,
            :team_id,
            :external_role_id,
            presence: true;
end
