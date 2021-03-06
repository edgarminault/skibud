class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.order("RANDOM()").all
    @markers = @itineraries.map do |itinerary|
      {
        lat: itinerary.latitude,
        long: itinerary.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { itinerary: itinerary })
      }
    end
  end
end
