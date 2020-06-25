class AddPoisToItineraries < ActiveRecord::Migration[6.0]
  def change
    add_column :itineraries, :poi, :hstore, default: {}, null: false
  end
end
