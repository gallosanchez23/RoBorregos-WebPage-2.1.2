require 'rails_helper'

RSpec.describe Activity, type: :model do
  let(:administrative_activity) { FactoryGirl.build(:administrative_activity) }

  subject { administrative_activity }

  context 'Associations' do
    it { should have_many(:user_activities) }
    it { should have_many(:users).through(:user_activities) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:year) }
    it { should validate_presence_of(:starts_on) }
    it { should validate_presence_of(:ends_on) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:activity_type) }
    it { should be_valid }
  end
end
