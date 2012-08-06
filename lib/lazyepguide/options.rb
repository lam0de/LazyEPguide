require 'optparse'

module LazyEPguide
  class Options
    attr_reader :show_to_find
    def initialize(argv)
      parse(argv)
      @show_to_find = argv
    end
    def parse(argv)
      OptionParser.new do |opts|
        opts.banner = "Usage: lazyepguide [ options ] show..."
        opts.on("-s", "--search_show name", String, "Show to find") do |search_show|
          puts search_show
          @show_to_find = search_show
        end
      end
    end
  end
end




