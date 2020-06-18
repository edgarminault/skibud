class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.text :conditions
      t.references :user, null: false, foreign_key: true
      t.text :other
      t.integer :length
      t.references :itinerary, null: false, foreign_key: true
      t.string :rating

      t.timestamps
    end
  end
end
