require 'rails_helper'

RSpec.describe Contest, type: :model do
  let(:international_activity) { FactoryGirl.build(:international_activity) }

  subject { international_activity }

  context 'Associations' do
    it { should have_many(:team_contests) }
    it { should have_many(:team).through(:team_contests) }
    it { should have_many(:categories).through(:team_contests) }
  end

  context 'Validations' do
    it { should validates_presence_of(:name) }
    it { should validates_presence_of(:year) }
    it { should validates_presence_of(:starts_on) }
    it { should validates_presence_of(:ends_on) }
    it { should validates_presence_of(:city) }
    it { should validates_presence_of(:country) }
    it { should validates_presence_of(:contest_type) }
    it { should be_valid }
  end
end
