require 'spec_helper.rb'

describe Search do

  before :each do 
    @search = Search.new('my_search')
  end

  describe '#new' do
    it 'takes one parameter returns a new Search object' do
      @search.should be_an_instance_of Search
    end
  end

  describe '#google_search' do
    it 'searches google and returns the first 10 results' do
      @search.google_search.should be_kind_of(Array)
    end
  end

  describe '#search_epguides' do
    it 'returns a search query for searching epguides.com' do
      @search.search_epguides.should eql 'allintitle: site:epguides.com my_search'
    end
  end
end
