# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

require 'json'
require 'open-uri'
require 'nokogiri'
require 'pry'

# Seed for itineraries

parsed_itineraries = Nokogiri::XML(open('skitours.xml'))
# parsed_itineraries["documents"].each do |itinerary|
# title =  itinerary["locales"][0]["title_prefix"]

#   # Scrape webpage info of the given itinerary
#   p "https://www.camptocamp.org/routes/#{itinerary["document_id"]}"
#   # http://www.outdooractive.com/api/project/api-dev-oa/tours/?key=yourtest-outdoora-ctiveapi
#   # API activity filter for skitour : 8982367
#   # API country filter for Switzerland: 1037953
#   # http://www.outdooractive.com/api/project/api-dev-oa/filter/tour?area=1037953&category=8982367&key=yourtest-outdoora-ctiveapi
#   Due to struggles with Nokogiri and XML-HTML parsing, this website was
# end
