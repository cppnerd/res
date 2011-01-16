class Flight < ActiveRecord::Base

  has_and_belongs_to_many :itineraries

  belongs_to :origin, :class_name => "Airport", :foreign_key => "origin_airport_id"
  belongs_to :destination, :class_name => "Airport", :foreign_key => "destination_airport_id"
  #has_one :destination, :class_name => "Airport"
  
  validates :number, :origin, :destination, :departure, :flight_time, :presence => true

  before_save   :calculate_arrival_time, :normalize_times_to_gmt
  before_update :calculate_arrival_time
  after_update  :normalize_times_to_gmt # must be AFTER update, or time zones will be wrong


  def departure_time_local
    (self.departure + self.origin.timezone.offset.hours).strftime('%H:%M')
  end
  
  def arrival_time_local
    (self.arrival + self.destination.timezone.offset.hours).strftime('%H:%M')
  end

  def calculate_arrival_time
    self.arrival = self.departure + self.flight_time.minutes
  end
  
  # All flights are stored in GMT. they will display with local time zones
  # After every update or creation, the arrival time is regenerated relative to departure timezone
  def normalize_times_to_gmt
    normalize_departure_time_to_gmt
    normalize_arrival_time_to_gmt
  end

  def normalize_departure_time_to_gmt
    self.departure -= self.origin.timezone.offset.hours
  end

  def normalize_arrival_time_to_gmt
    self.arrival -= self.origin.timezone.offset.hours
  end
end
