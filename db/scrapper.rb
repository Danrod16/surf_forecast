require 'open-uri'
require 'nokogiri'

beach = 'Barcelona'
url = "https://bancodatos.puertos.es/TablaAccesoSimplificado/?p=2111136&name=#{beach}"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

output= html_doc.search('.datacell').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
end
