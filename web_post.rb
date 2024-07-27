require 'net/http'
require 'uri'

uri = URI("https://reqres.in/api/users")
req = Net::HTTP::Post.new(uri)
req.set_form_data({name: 'Lucas', job: 'Dev'})

response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https") do |http|
    http.request(req)
end

puts response.code
puts response.message
puts response.body
