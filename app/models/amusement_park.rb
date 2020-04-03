class AmusementPark < ApplicationRecord
  has_many :rides

  def avg_thrill_rating
    rides.average(:rating)
  end

end
