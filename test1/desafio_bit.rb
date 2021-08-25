require "uri"
require "net/http"
require 'json'


def request(address)

 url = URI(address)
 https = Net::HTTP.new(url.host, url.port)
 https.use_ssl = true
 request = Net::HTTP::Get.new(url)
 response = https.request(request)
 JSON.parse response.read_body
end

prices = request('https://api.coindesk.com/v1/bpi/historical/close.json')
['bpi']

selected_data = {}
selected_data = prices.select {|k,v| v < 5000 }
selected_data.keys


