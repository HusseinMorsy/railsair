class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :nr
      t.integer :max_seats

      t.timestamps
    end
  end
end
