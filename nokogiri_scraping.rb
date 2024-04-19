require 'nokogiri'
require 'net/http'


https = Net::HTTP.new('example.com', 443)
https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)

tag_p_0 = doc.css('p')[0] #captura a primeira tag <p> do documento
tag_p_1 = doc.css('p')[1] #captura a segunda tag <p> do documento

puts tag_p_0.content
puts tag_p_1.content
