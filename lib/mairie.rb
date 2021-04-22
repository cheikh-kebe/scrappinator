require 'nokogiri'
require 'open-uri'

@page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))
def townhall_url

annuaire = page.xpath('//*[@class=""]').map do |x|
  x.text
end


def get_townhall_email(townhall_url)
  
  mail = page.xpath('//section[2]/div/table/tbody/tr[4]/td[2]').map do |i|
    i.text
  end
end


