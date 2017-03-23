class Activity < ApplicationRecord
  has_many :user_activities
  has_many :users, :through => :user_activities

  validates :name,
            :year,
            :starts_on,
            :ends_on,
            :city,
            :country,
            :activiy_type,
            presence: true

  enum activity_type: [:Externo,
                       :Administrativo]
end
