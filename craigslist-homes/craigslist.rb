#!/usr/bin/env ruby

require 'open-uri'
require 'oga'

def extract_url(element)
  hrefs = element.attributes.select { |attr| attr.name == "href" }.first
  url = hrefs.value
  url
end

def clean_up_urls(urls)
  urls.filter! { |url| /https:\/\/seattle\.craigslist\.org\/see\/apa\/.*/ =~ url }
  urls.uniq!
end

craigslist_url = ENV["URL"]

craigslist_page = URI.open(craigslist_url)

craigslist_document = Oga.parse_html(craigslist_page.read)

anchor_elements = craigslist_document.css("a")

urls = []

anchor_elements.each { |element| urls << extract_url(element) }

clean_up_urls(urls)

puts "There are #{urls.count} URLs"
