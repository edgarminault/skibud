class AddShortTitleCleansedToItineraries < ActiveRecord::Migration[6.0]
  def change
    add_column :itineraries, :card_title, :string
  end
end
