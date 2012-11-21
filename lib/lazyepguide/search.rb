require 'google-search'

class Search

  attr_reader :search_query 
  attr_writer :search_results

  def initialize(search_query)
    @search_query = search_query
    @search_results = []
  end

  def google_search()
    results = Google::Search::Web.new(:query => search_epguides)
    @search_results = results.take(10).map.each { |e| e.uri }
  end

  def search_epguides()
    q = 'allintitle: site:epguides.com '
    q << @search_query
  end
end
