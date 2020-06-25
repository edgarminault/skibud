class AddPoIsToItineraries < ActiveRecord::Migration[6.0]
  def change
    add_column :itineraries, :poi, :string, array: true, default: []
  end
end
