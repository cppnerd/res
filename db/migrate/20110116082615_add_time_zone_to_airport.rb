class AddTimeZoneToAirport < ActiveRecord::Migration
  def self.up
    add_column :airports, :timezone_id, :integer
  end

  def self.down
    remove_column :airports, :timezone_id
  end
end
