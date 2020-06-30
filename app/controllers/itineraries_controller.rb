class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.order("RANDOM()").all
  end
end
