class CreateFlights < ActiveRecord::Migration
  def self.up
    create_table :flights do |t|
      t.integer :number
      t.string :origin
      t.string :destination
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :flights
  end
end
