# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


# Seed for itineraries
require 'json'
require 'open-uri'
require 'nokogiri'

# Import the JSON file in the seed
path = File.join(File.dirname(__FILE__), "./seeds/skitours.json")
itineraries = JSON.parse(File.read(path))["beers"]["data"]
itineraries.each do |itinerary|
  # Check for the outdoor active api route id and scrape the webpage.
  itinerary_id = itinerary["-id"]
  itinerary_id
  itinerary_url = "https://www.outdooractive.com/en/route/#{itinerary_id}"

  # Scrape the itinerary.
  html_file = open(itinerary_url).read
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search('.oax_inline').each do |element|
    title = element.text.strip
  end

  html_doc.search('.oax_translated').each do |element|
    description = element
    p description
  end


end
puts "countries are seeded"
