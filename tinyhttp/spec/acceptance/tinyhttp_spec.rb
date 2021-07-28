require_relative '../../lib/tinyhttp'
require 'json'

RSpec.describe 'TinyHTTP Client' do

  it 'successfully sends a GET request' do
    res = TinyHTTP.get(url: "https://www.google.com")

    expect(res.code).to eq("200")
  end

  it 'successfully sends a POST request' do
    url = "https://postman-echo.com/post"
    body = {"hello" => "World"}.to_s
    res = TinyHTTP.post(url: url, body: body)

    expect(res.code).to eq("200")
  end

  it 'successfully sends a PUT request' do
    url = "https://postman-echo.com/put"
    body = {"Hello" => "Thar"}.to_s
    res = TinyHTTP.put(url: url, body: body)

    expect(res.code).to eq("204")
  end

  it 'successfully sends a DELETE request' do
    url = "https://postman-echo.com/delete"
    body = {"id" => 5}.to_s
    res = TinyHTTP.delete(url: url, body: body)

    expect(res.code).to eq("204")
  end
end
