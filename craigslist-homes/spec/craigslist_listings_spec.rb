require_relative '../craigslist.rb'
require 'pry'

RSpec.describe CraigslistListings, "Craigslist Listings" do
  context 'A collection of Craigslist listings' do

    it 'returns the number of listings' do
      listings_url = File.read("sample_craigslist_listings.html", "r")
      listings = CraigslistListings.new(listings_url)

      expect(listings.count).to eq(38)
    end

    it 'returns the latest listing' do
      listings_url = File.read("sample_craigslist_listings.html", "r")
      listings = CraigslistListings.new(listings_url)

      expect(listings.latest).to be_kind_of(CraigslistListing)
    end
  end

  context 'A Craigslist listing' do

    xit 'returns the url' do
      listing = CraigslistListing.new(url)

      expect(listing.url).to eq(url)
    end

    xit 'returns the number of beds' do
      listing = CraigslistListing.new(url)

      expect(listing.beds).to eq(2)
    end

    xit 'returns the number of baths' do
      listing = CraigslistListing.new(url)

      expect(listing.baths).to eq(2)
    end

    xit 'returns the posted at time' do
      listing = CraigslistListing.new(url)

      expect(listing.posted_at).to be_kind_of(DateTime)
      expect(listing.posted_at).to be(DateTime.new("fill-in-date-here"))
    end

    xit 'returns the updated at time' do
      listing = CraigslistListing.new(url)

      expect(listing.updated_at).to be_kind_of(DateTime)
      expect(listing.updated_at).to be(DateTime.new("fill-in-date-here"))
    end

    xit 'returns the square footage' do
      listing = CraigslistListing.new(url)

      expect(listing.sqft).to eq(1245)
    end

    xit 'returns the id' do
      listing = CraigslistListing.new(url)

      expect(listing.id).to eq(4372891439028) # change me
    end

    xit 'returns the title' do
      listing = CraigslistListing.new(url)

      expect(listing.title).to eq("insert-the-sample-title-here")
    end

    xit 'returns the description' do
      listing = CraigslistListing.new(url)

      expect(listing.title).to eq("insert-sample-description-here")
    end
  end
end
