require 'spec_helper'

describe Scrapper do

  before :each do
    @scrapper = Scrapper.new()
  end

  describe "#new" do
    it "returns a Scrapper object" do
      @scrapper.should be_an_instance_of Scrapper
    end
  end
end