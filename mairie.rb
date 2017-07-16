require "rubygems"
require "nokogiri"
require "open-uri"

TOWN_URL = "http://www.annuaire-des-mairies.com/95/enghien-les-bains.html"
VAL_DOISE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"



def get_the_email_of_a_townhal_from_its_webpage(url)
	page = Nokogiri::HTML(open(url))
	email = page.xpath('//table/tr[3]/td/table/tr[1]/td[1]/table[4]/tr[2]/td/table/tr[4]/td[2]/p/font')
	puts email.text	
end



get_the_email_of_a_townhal_from_its_webpage("http://www.annuaire-des-mairies.com/95/enghien-les-bains.html")
