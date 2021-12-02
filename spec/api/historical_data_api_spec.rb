=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.26.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::HistoricalDataApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'HistoricalDataApi' do
  before do
    # run before each test
    @instance = Intrinio::HistoricalDataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HistoricalDataApi' do
    it 'should create an instance of HistoricalDataApi' do
      expect(@instance).to be_instance_of(Intrinio::HistoricalDataApi)
    end
  end

  # unit tests for get_historical_data
  # Historical Data
  # Returns historical values for the given &#x60;tag&#x60; and the entity represented by the given &#x60;identifier&#x60;
  # @param identifier An identifier for an entity such as a Company, Security, Index, etc (Ticker, FIGI, ISIN, CUSIP, CIK, LEI, Intrinio ID)
  # @param tag An Intrinio data tag ID or code (&lt;a href&#x3D;&#39;https://data.intrinio.com/data-tags&#39;&gt;reference&lt;/a&gt;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :frequency Return historical data in the given frequency
  # @option opts [String] :type Filter by type, when applicable
  # @option opts [Date] :start_date Get historical data on or after this date
  # @option opts [Date] :end_date Get historical date on or before this date
  # @option opts [String] :sort_order Sort by date &#x60;asc&#x60; or &#x60;desc&#x60;
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseHistoricalData]
  describe 'get_historical_data test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
