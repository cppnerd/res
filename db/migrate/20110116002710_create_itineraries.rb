class CreateItineraries < ActiveRecord::Migration
  def self.up
    create_table :itineraries do |t|
      t.references :guest
      t.references :flight
      t.date :date
      t.string :confirmation

      t.timestamps
    end
  end

  def self.down
    drop_table :itineraries
  end
end
