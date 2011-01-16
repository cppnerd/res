class ChangeAirportCountryToId < ActiveRecord::Migration
  def self.up
    rename_column :airports, :country, :country_id
    change_column :airports, :country_id, :integer
  end

  def self.down
    change_column :airports, :country_id, :string
    rename_column :airports, :country_id, :country
  end
end
