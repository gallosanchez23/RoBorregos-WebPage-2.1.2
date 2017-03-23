require 'rails_helper'

RSpec.describe UserActivity, type: :model do
  let(:user_activity) { FactoryGirl.build(:user_activity) }

  subject { user_activity }

  context 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:activity) }
  end

  context 'Validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:activity_id) }
    it { should be_valid }
  end
end
