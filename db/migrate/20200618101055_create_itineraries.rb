class CreateItineraries < ActiveRecord::Migration[6.0]
  def change
    create_table :itineraries do |t|
      t.string :title
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
