class Itinerary < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
  infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
end
