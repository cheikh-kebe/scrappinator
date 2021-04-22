require 'nokogiri'
require 'open-uri'

@nokogiri_doc = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))

def townhall_url

  annuaire = @nokogiri_doc.xpath('/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[2]/p/a[1]').map do |x|
    x.text.downcase
  end
end

puts townhall_url
def get_townhall_email(townhall_url)
  
  town_url = @nokogiri_doc.xpath('//section[2]/div/table/tbody/tr[4]/td[2]').map do |i|
    i.text
  end
end


