class User < ApplicationRecord
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable and :registerable
  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  belongs_to :external_role
  has_many :user_activities
  has_many :user_teams
  has_many :activities, :through => :user_activities
  has_many :external_roles, :through => :user_teams
  has_many :teams, :through => :user_teams

  validates :name,
            :lastname,
            :birthday,
            :major,
            :first_semester,
            :current_semester,
            :status,
            :email,
            :generation,
            :external_role_id,
            presence: true

  enum status: [:active, :inactive]

  def assign_default_role
    self.add_role(:member) if self.roles.blank?
  end
end
