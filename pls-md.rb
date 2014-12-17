# encoding: utf-8

require 'open-uri'
require 'pdf/reader'

content = "#Programming Language Structures\n\n###"

Dir.glob('*.pdf') do |pdf_file|
  File.open(pdf_file, "rb") do |io|
    reader = PDF::Reader.new(io)
    reader.pages.each do |page|
      content += page.text
      #puts page.text
    end
    #puts reader.info
  end
end

content = content.gsub(/\s*Copyright © 2004 Pearson Addison\-Wes.........................[\d\-\s]*/, "\n\n###")
content = content.gsub(/ISBN 0\-321\-19362\-8/, "\n\n###")


content = content.gsub(/\s*Modified by [a-zA-Z ]+\s*Fall \d\d\d\d/, "\n\n")

# Multiline headers on one line
3.times do
  content = content.gsub(/(###[\w -“”]+)\s*\n\s*([A-Za])/, '\1 \2')
end

# Remove duplicate headers
10.times do
    content = content.gsub(/###([\w -“”]+)\s*\n(\s*[^#]+?)###\1/, '###\1' + "\n" + '\2')
end

# Get rid of topic outline
content = content.gsub(/###Chapter \d+ Topics[^#]*/, "\n\n")

# Shorten and emphasize chapter headers
content = content.gsub(/###Chapter (\d+)\s*/, '##CH\1 ')

# Replace bullets
content = content.gsub(/[•–] /, '- ')

# Remove excessive lines
content = content.gsub(/\n\s*\n+/, "\n\n")

# Remove excessive lines
content = content.gsub(/\n\s*\n+/, "\n\n")

#Please don't sue me
content += "Copyright © 2004 Pearson Addison-Wesley. All rights reserved."

puts content
