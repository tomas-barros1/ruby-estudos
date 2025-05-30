require 'net/http'

req = Net::HTTP::Post.new("/api/users")

req.set_form_data({ name: 'Mario', job: 'Encanador'})

response = Net::HTTP.start('reqres.in', use_ssl: true) do |http|
  http.request(req)
end

# :( 401 {"error":"Missing API key.","how_to_get_one":"https://reqres.in/signup"}

puts response.code
puts response.body
