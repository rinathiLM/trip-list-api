class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :location
      t.boolean :done

      t.timestamps
    end
  end
end
