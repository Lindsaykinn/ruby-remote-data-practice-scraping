require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

doc.css(".headline-26OIBN").text.strip

courses = doc.css(".title-oE5vT4")

courses.each do |course|
    puts course.text.strip
end

p doc.css(".title-oE5vT4")[0].attributes


# binding.pry


