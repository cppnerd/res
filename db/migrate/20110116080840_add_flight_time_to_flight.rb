class AddFlightTimeToFlight < ActiveRecord::Migration
  def self.up
    add_column :flights, :flight_time, :integer
  end

  def self.down
    remove_column :flights, :flight_time
  end
end
