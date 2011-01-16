class Flight < ActiveRecord::Base

  has_and_belongs_to_many :itineraries

  belongs_to :origin, :class_name => "Airport"
  belongs_to :destination, :class_name => "Airport"
  #has_one :destination, :class_name => "Airport"
  
  validates :origin, :destination, :departure, :arrival, :presence => true
  
end
