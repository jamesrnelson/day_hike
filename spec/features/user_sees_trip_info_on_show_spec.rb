require 'rails_helper'

describe 'User' do
  context 'visits show page' do
    it 'sees stats about the trip' do
      trip1 = Trip.create
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

      visit trip_path(trip1)
      expect(page).to have_content("Planned Hiking Distance: #{trip1.total_hiking_distance}")
      expect(page).to have_content("Average Hiking Distance: #{trip1.average_hiking_distance}")
      expect(page).to have_content("Longest Hiking Distance: #{trip1.longest_hiking_distance}")
      expect(page).to have_content("Shortest Hiking Distance: #{trip1.shortest_hiking_distance}")
    end
  end
end
