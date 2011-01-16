class CreateAirports < ActiveRecord::Migration
  def self.up
    create_table :airports do |t|
      t.string :code
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :airports
  end
end
