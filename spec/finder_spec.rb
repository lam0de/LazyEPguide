require 'spec_helper'

describe Finder do
 
  before :each do
    @finder = Finder.new("Show_tofind")
  end

  describe "#new" do
    it "takes one parameter and returns a Finder object" do
      @finder.should be_an_instance_of Finder
    end
  end

  describe "#show_tofind" do
    it "returns the show" do
      @finder.show_tofind.should eql "Show_tofind"
    end
  end
  
  describe "#verify_show_tofind" do
    it "returns search results for '#show_tofind' from epguide" do
      @finder.verify_show_tofind eql "Show_tofind"
    end
  end
end








