class CreateCleanings < ActiveRecord::Migration[6.0]
  def change
    create_table :cleanings do |t|
      t.string :services
      t.string :day
      t.string :moment

      t.timestamps
    end
  end
end
