require 'rails_helper'

describe Trip, type: :model do
  describe 'Validations' do
    it { should have_many(:trip_trails) }
    it { should have_many(:trips) }
  end
end
