class AddDefaultValueToTrips < ActiveRecord::Migration[5.1]
  def change
    change_column_default :trips, :done, false
  end
end
