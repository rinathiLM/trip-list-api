class AddImageColumnToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :image, :string
  end
end
