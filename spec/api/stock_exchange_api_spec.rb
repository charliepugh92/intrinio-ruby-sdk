=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.28.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::StockExchangeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StockExchangeApi' do
  before do
    # run before each test
    @instance = Intrinio::StockExchangeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StockExchangeApi' do
    it 'should create an instance of StockExchangeApi' do
      expect(@instance).to be_instance_of(Intrinio::StockExchangeApi)
    end
  end

  # unit tests for get_all_stock_exchanges
  # All Stock Exchanges
  # Returns all Stock Exchanges matching the specified parameters
  # @param [Hash] opts the optional parameters
  # @option opts [String] :city Filter by city
  # @option opts [String] :country Filter by country
  # @option opts [String] :country_code Filter by ISO country code
  # @option opts [Integer] :page_size The number of results to return
  # @return [ApiResponseStockExchanges]
  describe 'get_all_stock_exchanges test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stock_exchange_by_id
  # Lookup Stock Exchange
  # Returns the Stock Exchange with the given &#x60;identifier&#x60;
  # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @return [StockExchange]
  describe 'get_stock_exchange_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stock_exchange_price_adjustments
  # Stock Price Adjustments by Exchange
  # Returns stock price adjustments for the Stock Exchange with the given &#x60;identifier&#x60;
  # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :date The date for which to return price adjustments
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseStockExchangeStockPriceAdjustments]
  describe 'get_stock_exchange_price_adjustments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stock_exchange_prices
  # Stock Prices by Exchange
  # Returns end-of-day stock prices for Securities on the Stock Exchange with &#x60;identifier&#x60; and on the &#x60;price_date&#x60; (or the latest date that prices are available)
  # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :date The date for which to return prices
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseStockExchangeStockPrices]
  describe 'get_stock_exchange_prices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stock_exchange_realtime_prices
  # Realtime Stock Prices by Exchange
  # Returns realtime stock prices for the Stock Exchange with the given &#x60;identifier&#x60;
  # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Return realtime prices from the specified data source. If no source is specified, all sources are used.
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseStockExchangeRealtimeStockPrices]
  describe 'get_stock_exchange_realtime_prices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stock_exchange_securities
  # Securities by Exchange
  # Returns Securities traded on the Stock Exchange with &#x60;identifier&#x60;
  # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseStockExchangeSecurities]
  describe 'get_stock_exchange_securities test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
