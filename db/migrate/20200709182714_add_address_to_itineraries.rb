class AddAddressToItineraries < ActiveRecord::Migration[6.0]
  def change
    add_column :itineraries, :address, :string
  end
end
