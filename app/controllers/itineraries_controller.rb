class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.order("RANDOM()").all
    @markers = @flats.map do |map|
      {
        lat: flat.latitude,
        long: flat.lomngitude
      }
    end
  end
end
