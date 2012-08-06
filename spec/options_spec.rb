require 'spec_helper'

module LazyEPguide
  
  describe Options do

    describe "#new" do
      it "takes an array of options" do
        opts = Options.new(["someoption", "showname"])
        opts.should be_an_instance_of Options
      end
    end
  end
end

