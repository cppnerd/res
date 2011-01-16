class CreatePassengers < ActiveRecord::Migration
  def self.up
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :passengers
  end
end
