require "uri"
require "net/http"
require "json"
require "colorize"

module Sourcebin

$base_url = "https://sourceb.in/"
$domain = $base_url.gsub("https://","").gsub('/','')

def self.write(name = "file.rb",code)
    url = URI($base_url + "/api/bins")
    form = {
        files: [name: name, content: code, languageId: 326] 
    }
    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
    
    request = Net::HTTP::Post.new(url)
    request["content-type"] = "application/json"
    request.body = form.to_json
    
puts "[INFO] ".red + "Sent with success".green
response = https.request(request)
return JSON.parse(response.read_body)['key']
end


def self.sendFile(path)
    
    file = File.open(path)
    data = []
    file.each do |line|
    data.push(line)
    $text = data.join("")
    end
return write($text)
end

def self.readRaw(key)
    
https = Net::HTTP.new($domain, 443)

https.use_ssl = true

res = https.get("/raw/#{key}/0")

if res.code.to_i == 404
    puts "[INFO] ".red+"#{JSON.parse(res.body)['message']}".red
else
    puts "[INFO] ".red+"Received with success".green
    return res.body
end

end

def self.run(key)
    
    https = Net::HTTP.new($domain, 443)
    
    https.use_ssl = true
    
    res = https.get("/raw/#{key}/0")
    
    File.open("#{key}.rb", 'w') do |line|
        line.puts(res.body)
    end
        require("./#{key}")
    require("./#{key}")
    File.delete("./#{key}.rb")
    end

def self.download(key)
    
    https = Net::HTTP.new($domain, 443)
        
    https.use_ssl = true
        
    res = https.get("/raw/#{key}/0")
        
    File.open("#{key}", 'w') do |line|
        line.puts(res.body)
    end  
end

def self.base_url
    return $base_url
end

def self.domain
    return $domain
end

def self.ping
    t = Time.now()
    uri = URI($base_url)
    res = Net::HTTP.get(uri)
    t = (Time.now().to_f - t.to_f) * 1000
    return t.to_i
end

# Warns 

def self.code(code)
    return "[INFO] ".red+"Please use " + "write".green + " instead of " + "code".red
end

end
