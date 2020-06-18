# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

require 'json'
require 'open-uri'
require 'nokogiri'
require 'pry'

# Seed for itineraries

itineraries_url = 'https://api.camptocamp.org/routes?act=skitouring'
raw_itineraries = open(itineraries_url).read
parsed_itineraries = JSON.parse(raw_itineraries)
parsed_itineraries["documents"].each do |itinerary|
  title =  itinerary["locales"][0]["title_prefix"]

  # Scrape webpage info of the given itinerary
  itinerary_url = "https://www.camptocamp.org/routes/#{itinerary["document_id"]}"
  p itinerary_url
  html = open(itinerary_url)
  doc = Nokogiri::HTML(html)
  html = doc.css('p')
  binding.pry
end
