require 'net/http'

example = Net::HTTP.get('example.com', '/index.html')

File.open('example.html', 'w') do |line|
  line.puts(example)
end

# chamada https

https = Net::HTTP.new('reqres.in', 443)
https.use_ssl = true

response = https.get('/api/users')

puts response.code

puts response.message

puts response.body
