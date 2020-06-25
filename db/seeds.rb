# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


# Seed for itineraries
require 'json'
require 'open-uri'
require 'httparty'

# Import the JSON file in the seed
path = File.join(File.dirname(__FILE__), "./seeds/skitours.json")
itineraries = JSON.parse(File.read(path))["beers"]["data"]
i = 1
itineraries.each do |itinerary|
  # Check for the outdoor active api route id and scrape the webpage.
  itinerary_id = itinerary["-id"]
  itinerary_url = "http://www.outdooractive.com/api/project/api-dev-oa/oois/#{itinerary_id}?key=yourtest-outdoora-ctiveapi"
  raw_itinerary = HTTParty.get(itinerary_url)

  # Parsing the raw answer to a hash with HTTParty function parsed_response.
  parsed_itinerary = raw_itinerary.parsed_response
  title = parsed_itinerary["oois"]["tour"]["title"]
  description = parsed_itinerary["oois"]["tour"]["longText"]
  poi = parsed_itinerary["oois"]["tour"]["geometry"].split(" ")
  hashed_poi = Hash.new
  hashed_components = Hash.new
  counter = 1
  poi.each do |point|
    # Each point is a hash of lat, long and alt. All points are stored in a hash.
    hashed_components["long"] = point.split(",")[0].to_f
    hashed_components["lat"] = point.split(",")[1].to_f
    hashed_components["alt"] = point.split(",")[2].to_i
    hashed_poi[counter] = hashed_components
    counter += 1
  end

  latitude = hashed_poi[1]["lat"]
  longitude = hashed_poi[1]["long"]
  p "End of itinerary"
  exit
end
puts "countries are seeded"

