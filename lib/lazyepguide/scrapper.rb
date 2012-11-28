require 'mechanize'

class Scrapper

  attr_accessor :url_to_scrap

	def initialize(url_to_scrap)
    @url_to_scrap = url_to_scrap
  end

  def scrap
    agent = Mechanize.new
    page = agent.get @url_to_scrap
    csv_list = agent.click(page.link_with(:text => 'list as.csv'))
    csv = csv_list.parser.xpath('/html/body/pre')
    show_info = csv.children.to_s.split(/\r?\n/)
    show_info.shift
    episodes = show_info.map { |x| x.split(',') }
  end
end