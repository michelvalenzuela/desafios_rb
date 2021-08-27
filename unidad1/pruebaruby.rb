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


data = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz&api_key=0yfKWDORvKpdC8uTay1qcZklIAgipMhQBitWbEe7')[0..10] #
#Limitamos los resultados a 10
photos = data.map{|x| x['img_src']}
html = '<html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
            </head>
            <body>
            '
photos.each do |photo|
html += "<img src=\"#{photo}\">\n"
end
html += '</body>
            </html>   
'

File.write('output.html', html)