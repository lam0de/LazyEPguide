  require 'mechanize'

  def scrap(site)
    agent = Mechanize.new
    page = agent.get site
    list_page = agent.click(page.link_with(:text => 'list as.csv'))
    csv = list_page.parser.xpath('/html/body/pre')
    show_info = csv.children.to_s.split(/\r?\n/)
    show_info.shift
    episodes = show_info.map { |x| x.split(',') }
  end