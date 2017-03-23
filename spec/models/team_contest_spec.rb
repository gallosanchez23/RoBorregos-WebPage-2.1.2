require 'rails_helper'

RSpec.describe TeamContest, type: :model do
  let(:team_contest) { FactoryGirl.build(:team_contest) }

  subject { team_contest }

  context 'Associations' do
    it { should belong_to(:team) }
    it { should belong_to(:contest) }
    it { should belong_to(:category) }
  end

  context 'Validations' do
    it { should validate_presence_of(:team_id) }
    it { should validate_presence_of(:contest_id) }
    it { should validate_presence_of(:category_id) }
    it { should be_valid }
  end
end
