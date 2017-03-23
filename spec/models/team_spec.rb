require 'rails_helper'

RSpec.describe Team, type: :model do
  let(:team) { FacotryGirl.build(:team) }

  subject { team }

  context 'Associations' do
    it { should have_many(:user_teams) }
    it { should have_many(:team_contests) }
    it { should have_many(:external_roles).through(:user_teams) }
    it { should have_many(:users).through(:user_teams) }
    it { should have_many(:categories).through(:team_contests) }
    it { should have_many(:contests).through(:team_contests) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:year) }
    it { should be_valid }
  end
end
