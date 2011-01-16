class AddDepartureAndArrivalTimesToFlight < ActiveRecord::Migration
  def self.up
    add_column :flights, :departure, :time
    add_column :flights, :arrival, :time
  end

  def self.down
    remove_column :flights, :departure
    remove_column :flights, :arrival
  end
end