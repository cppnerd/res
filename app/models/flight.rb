class Flight < ActiveRecord::Base

  has_and_belongs_to_many :itineraries

  belongs_to :origin, :class_name => "Airport", :foreign_key => "origin_airport_id"
  belongs_to :destination, :class_name => "Airport", :foreign_key => "destination_airport_id"
  #has_one :destination, :class_name => "Airport"
  
  validates :number, :origin, :destination, :departure, :arrival, :flight_time, :presence => true
  
end
