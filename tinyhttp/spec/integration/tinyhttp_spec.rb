require_relative '../../lib/tinyhttp'
require 'json'

RSpec.describe 'TinyHTTP Requests' do
  describe TinyHTTP.post, "POST Requests" do
    context "When Content-Type is Raw Text"
    context "When Content-Type is Form Data"
    context "When Content-Type is JSON"
    context "When Content-Type is not specified"
  end
end
