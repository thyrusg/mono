require 'net/http'
require 'uri'

class TinyHTTP

  def self.get(url:, params: {}, headers: {})
    uri = URI(url)
    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == "https") do |http|
      uri.query = URI.encode_www_form(params) if !params.empty?
      request = Net::HTTP::Get.new(uri)
      if headers
        headers.each_pair do |key, value|
          request.add_field key, value
        end
      end
      response = http.request request
    end
  end

  def self.post()
  end

  def self.put()
  end

  def self.delete()
  end
end
