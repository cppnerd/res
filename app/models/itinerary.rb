class Itinerary < ActiveRecord::Base
  belongs_to :passenger
  #belongs_to :flight

  has_and_belongs_to_many :flights
  
end
