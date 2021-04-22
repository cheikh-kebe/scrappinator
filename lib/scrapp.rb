require 'nokogiri'
require 'open-uri'

@page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

def path
  symbol = @page.xpath('//td[3] | //td[5]').map do |crypto|
    crypto.content.tr('$','')
  end
end

def scrap(symbol)
  i = 0
  array = []
  while symbol[i] != nil do 
  array << Hash[symbol[i],symbol[i+1]]
      i=i+2
  end
  return array
end

puts scrap(path)




