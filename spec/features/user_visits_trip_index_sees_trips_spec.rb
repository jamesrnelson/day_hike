require 'rails_helper'

describe 'User' do
  context 'visits trip index page' do
    it 'should see a list of trips' do
      trip1 = Trip.create
      trip2 = Trip.create

      visit trips_path

      expect(page).to have_content('All Trips by ID')
      expect(page).to have_content(trip1.id)
      expect(page).to have_content(trip2.id)
    end
  end
end

describe 'User' do
  context 'clicks show link  from trips index' do
    it 'should see info about trip including trail info' do
      trip1 = Trip.create
      trip2 = Trip.create
      trail1 = trip1.trails.create(
        name: 'Dangerous Trail',
        address: '123 Boulder Ave, Boulder, CO',
        length: 6
      )
      trail2 = trip1.trails.create(
        name: 'Perilous Trail',
        address: '567 Golden Ave, Golden, CO',
        length: 8
      )

      visit trips_path
      click_on '1'

      expect(current_path).to eq(trip_path(trip1))
      expect(page).to have_content(trail1.name)
      expect(page).to have_content(trail1.address)
      expect(page).to have_content(trail1.length)
      expect(page).to have_content(trail2.name)
      expect(page).to have_content(trail2.address)
      expect(page).to have_content(trail2.length)
    end
  end
end
