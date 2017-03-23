class ExternalRole < ApplicationRecord
  has_one  :user
  has_many :user_teams
  has_many :users, :through => :user_teams
  has_many :teams, :through => :user_teams

  validates :name, presence: true

  #enum status: [:General, :Equipo, :Actividad_externa, :Competencia]
end
