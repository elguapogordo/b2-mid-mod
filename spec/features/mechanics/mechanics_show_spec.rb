require 'rails_helper'

RSpec.describe "as a user, when i go to a mechanic's show page", type: :feature do
  describe "i see their name, experience, and names of all rides they're working on and" do
    describe "i see a form to add a ride to their workload and when i submit that ride" do
      describe "i'm redirected to that mechanic's show page and can see that ride" do
        it "has been added to their list of rides to work on" do

          mechanic1 = Mechanic.create!(name: "Sam Mills", experience: 10)
          park1 = AmusementPark.create!(name: "Hershey Park", admissions: "$50.00")
          ride1 = park1.rides.create!(name: "Storm Runner", rating: 7.8)
          ride2 = park1.rides.create!(name: "Lightning Racer", rating: 8.0)
          ride3 = park1.rides.create!(name: "The Great Bear", rating: 7.6)
          mechanic1.rides << ride2

          visit "/mechanics/#{mechanic1.id}"

          expect(page).to have_content("#{mechanic1.name}")
          expect(page).to have_content("#{mechanic1.experience} years of experience")
          expect(page).to have_content("Rides working on:")
          expect(page).to have_content("#{ride2.name}")
          expect(page).to have_content("Add ride to list")


        end
      end
    end
  end
end
