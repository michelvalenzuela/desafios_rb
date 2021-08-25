require "uri"
require "json"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/posts/1")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Put.new(url)
request["Content-Type"] = "application/json"
request.body = JSON.dump({
  "id": 20,
  "title": "Post 101",
  "body": "Este es nuestro primer put",
  "userId": 2
})

response = https.request(request)
puts response.read_body
