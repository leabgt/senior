class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.date :start_at
      t.time :timeslot
      t.string :arrival_address
      t.string :progress

      t.timestamps
    end
  end
end
