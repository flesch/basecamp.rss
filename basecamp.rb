require 'sinatra'
require 'net/https'
require 'uri'

get '/:token/*' do |token, feed|
    headers 'Content-Type' => 'application/xml'
    uri = URI.parse(feed)
    http = Net::HTTP.new(uri.host, 443)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri.request_uri)
    request.basic_auth(token, "X")
    response = http.request(request)
    response.body
end
