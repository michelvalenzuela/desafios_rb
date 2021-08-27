require "json"
require "uri"
require "net/http"

def request (url)
    url = URI(url)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    request['app_id'] = '3001286f-0f1c-4ff6-9f19-c91a43de9ffd'
    request['app_key'] = '0yfKWDORvKpdC8uTay1qcZklIAgipMhQBitWbEe7'
    response = https.request(request)
    return JSON.parse response.read_body
end

def buid_web_page (hash)
    web_temp = [
        '<!DOCTYPE html>',
        '<html lang="en">',
        '<head>',
            '<meta charset="UTF-8">',
            '<meta http-equiv="X-UA-Compatible" content="IE=edge">',
            '<meta name="viewport" content="width=device-width, initial-scale=1.0">',
            '<title>Mars Photos</title>',
        '</head>',
        '<body>',
            '<ul>',
                '!li',
            '</ul>',
        '</body>',
        '</html>'
    ]

    img_array = []
    hash["photos"].each do |img_url|
        img_array.append "<li><img src='#{img_url["img_src"]}'></li>"
    end
    
    file = File.open("index.html", "w")
    web_temp.each do |line|
        if line != '!li'
            file.puts(line)
        else
            img_array.each do |li_img|
                file.puts(li_img)
            end
        end
    end

    file.close

end

def photoc (hash)
    camera_count = {}
    hash["photos"].each do |camera|
        key_name = camera["camera"]["full_name"]
        if camera_count.keys.include? key_name
            camera_count[key_name] += 1
        else
            camera_count[key_name] = 1
        end
    end

    return camera_count
end

url = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz&api_key=0yfKWDORvKpdC8uTay1qcZklIAgipMhQBitWbEe7"
r = request url
buid_web_page (r)
photo_summ = photosc (r)