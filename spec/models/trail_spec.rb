require 'rails_helper'

describe Trail, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:length) }
    it { should have_many(:trip_trails) }
    it { should have_many(:trips) }
  end
end
