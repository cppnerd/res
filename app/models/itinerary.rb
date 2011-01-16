class Itinerary < ActiveRecord::Base
  belongs_to :guest
  belongs_to :flight
end
