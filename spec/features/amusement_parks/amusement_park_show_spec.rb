require 'rails_helper'

RSpec.describe "as a visitor, when i visit a park show page", type: :feature do
  describe "i see name and price of admissions for that park and" do
    describe "i see an alphabetical list of names of rides at that park and" do
      it "i see an average thrill rating of this park's rides" do

        park1 = AmusementPark.create!(name: "Hershey Park", admissions: "$50.00")
        ride1 = park1.rides.create!(name: "Storm Runner", rating: 7.8)
        ride2 = park1.rides.create!(name: "Lightning Racer", rating: 8.0)
        ride3 = park1.rides.create!(name: "The Great Bear", rating: 7.6)

        visit "/amusement_parks/#{park1.id}"

        expect(page).to have_content("Hershey Park")
        expect(page).to have_content("Admissions: $50.00")
        expect(page).to have_content("Lightning Racer")
        expect(page).to have_content("Storm Runner")
        expect(page).to have_content("The Great Bear")
        expect(page).to have_content("Average Thrill Rating of Rides: 7.8/10")

      end
    end
  end
end
