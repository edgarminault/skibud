# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


# Seed for itineraries
require 'json'
require 'open-uri'
require 'nokogiri'
require 'httparty'

# Import the JSON file in the seed
path = File.join(File.dirname(__FILE__), "./seeds/skitours.json")
itineraries = JSON.parse(File.read(path))["beers"]["data"]
itineraries.each do |itinerary|
  # Check for the outdoor active api route id and scrape the webpage.
  itinerary_id = itinerary["-id"]
  itinerary_url = "http://www.outdooractive.com/api/project/api-dev-oa/oois/#{itinerary_id}?key=yourtest-outdoora-ctiveapi"

  response = HTTParty.get(itinerary_url)



  puts response.parsed_response.class
  # , response.code, response.message, response.headers.inspect

  p "End of itinerary"

  # Scrape the itinerary.
  # html_file = open(itinerary_url).read
  # document  = Nokogiri::XML(html_file)
  # p document
  # # p document
  # document.root.xpath('tour').each do |info|
  #   p info.xpath('title').text
  # end
  # p document.root.xpath('title').text
  # html_doc = Nokogiri::HTML(html_file)
end
puts "countries are seeded"



