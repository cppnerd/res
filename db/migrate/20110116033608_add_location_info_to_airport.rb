class AddLocationInfoToAirport < ActiveRecord::Migration
  def self.up
    add_column :airports, :name, :string
    add_column :airports, :city, :string
    add_column :airports, :state, :string
    add_column :airports, :country, :string
  end

  def self.down
    remove_column :airports, :name
    remove_column :airports, :city
    remove_column :airports, :state
    remove_column :airports, :country
  end
end
