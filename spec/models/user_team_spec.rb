require 'rails_helper'

RSpec.describe UserTeam, type: :model do
  let(:user_team) { FactoryGirl.build(:user_team) }

  subject { user_team }

  context 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:team) }
    it { should belong_to(:external_role) }
  end

  context 'Validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:team_id) }
    it { should validate_presence_of(:external_role_id) }
    it { should be_valid }
  end
end
