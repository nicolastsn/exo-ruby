require "rubygems"
require "nokogiri"
require "open-uri"


crypto_tab = Hash.new()
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
currency = page.xpath("//*/tr/td[2]/a")
rate = page.xpath("//*/td[5]/a")

for i in 0...currency.length do
currency_text = currency[i].text
rate_text = rate[i].text
crypto_tab [currency_text] = rate_text
puts "#{currency_text}: #{rate_text}"
end