require 'spec_helper.rb'

describe 'Scrapper' do

  before :each do
    @scrapper = Scrapper.new('http://epguides.com/BigBangTheory')
  end

	describe '#new' do
    it 'takes one argument and returns a new Scrapper object' do
      @scrapper.should be_an_instance_of Scrapper
    end
	end

  describe '#url_to_scrap' do
    it 'returns the correct url_to_scrap' do
      @scrapper.url_to_scrap.should eql 'http://epguides.com/BigBangTheory'
    end
  end

  describe '#scrap' do 
    it 'returns a Array of all show episodes' do
      @scrapper.scrap.should be_a_kind_of Array
    end
  end
end
