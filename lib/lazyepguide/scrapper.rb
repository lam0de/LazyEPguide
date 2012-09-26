require 'mechanize'

class Scrapper

  attr_accessor :agent
  attr_accessor :page

  def initialize()
    @agent = Mechanize.new
  end

  def scrap_page(page_to_scrap)
    @page = @agent.get(page_to_scrap)
  end

  def search_google(user_search)
    search_result = @page.form_with(:name => 'f') do |search|
      search.q = "allintitle: site:epguides.com #{user_search}"
    end.submit

   #puts search_result.parser.xpath("//h3[@class='r']").map { |link| link.text } 
   search_result.links_with(:text => /#{Regexp.escape(user_search)}/).each do |link|
     puts link.text
   end
  end
end

scrapper = Scrapper.new
scrapper.scrap_page("http://www.google.com")
scrapper.search_google("big")

