require 'google-search'

q = 'allintitle: site:epguides.com ' 
q << 'Big' 

search = Google::Search::Web.new(:query => q)
search.take(10).each do |e| 
  puts e.title
  puts e.uri
end
