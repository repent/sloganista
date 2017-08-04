#!/usr/bin/env ruby

require 'nokogiri'

slogans = []

ARGV.each do |file|
  puts "File: #{file}"

  doc = Nokogiri::XML(File.open(file))
  doc.xpath("//button").each do |s|
    puts "Scraped slogan: #{s.content}"
    next if s.content =~ /Create your store/ or s.content =~ /Generate slogans/
    slogans.push s.content
  end
end

File.open('output.csv', 'w') do |out|
  slogans.each do |s|
    out << s.strip << "\n"
  end
end