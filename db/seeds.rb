require 'open-uri'

url = "https://filworld.ru/samye-nuzhnye-anglijskie-slova/"
page = Nokogiri::HTML(URI.open(url))
page = page.xpath("//strong[contains(text(), '100 САМЫХ ПОПУЛЯРНЫХ СЛОВ')]/../following-sibling::p/text()")

page = page.map do |str|
  [str.text.slice(/[a-zA-Z]+/),
  str.text.slice(/(?<=-|–|—)\D+/)]
end

page.each do |item|
  Card.create!(original_text: item[0], translated_text: item[1], review_date: DateTime.now)
end
