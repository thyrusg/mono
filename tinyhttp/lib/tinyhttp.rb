require 'net/http'
require 'uri'

class TinyHTTP

  Response = Struct.new(:code)
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
      response
    end
  end

  def self.post(url:, body: {}, params: {}, headers: {})
    uri = URI(url)
    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == "https") do |http|
      uri.query = URI.encode_www_form(params) if !params.empty?
      request = Net::HTTP::Post.new(uri)
      if headers
        headers.each_pair do |key, value|
          request.add_field key, value
        end
      end
      response = http.request(request, body)
    end
  end

  def self.put(url:, body:)
    res = Response.new("204")
  end

  def self.delete(url:, body:)
    res = Response.new("204")
  end

end
