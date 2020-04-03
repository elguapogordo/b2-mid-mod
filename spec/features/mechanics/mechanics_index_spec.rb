require 'rails_helper'

RSpec.describe "as a user, when i visit /mechanics", type: :feature do
  it "has an 'All Mechanics' header and a list of mechanics and their experience" do

    mechanic1 = Mechanic.create!(name: "Sam Mills", experience: 10)
    mechanic2 = Mechanic.create!(name: "Kara Smith", experience: 11)

    visit '/mechanics/'

    expect(page).to have_content("All Mechanics")
    expect(page).to have_content("Sam Mills - 10 years of experience")
    expect(page).to have_content("Kara Smith - 11 years of experience")

  end
end
