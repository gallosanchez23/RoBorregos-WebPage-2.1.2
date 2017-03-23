require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { FactoryGirl.build(:category) }

  subject { category }

  context 'Associations' do
    it { should have_many(:team_contests) }
    it { should have_many(:teams).through(:team_contests) }
    it { should have_many(:contests).through(:team_contests) }
  end

  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should be_valid }
  end
end
