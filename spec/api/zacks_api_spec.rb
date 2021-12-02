=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.26.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for Intrinio::ZacksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ZacksApi' do
  before do
    # run before each test
    @instance = Intrinio::ZacksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ZacksApi' do
    it 'should create an instance of ZacksApi' do
      expect(@instance).to be_instance_of(Intrinio::ZacksApi)
    end
  end

  # unit tests for get_zacks_analyst_ratings
  # Zacks Analyst Ratings
  # Returns buy, sell, and hold recommendations from analysts at brokerages for all companies in the Zacks universe. Zack’s storied research team aggregates and validates the ratings from professional analysts.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier A Security identifier (Ticker, FIGI, ISIN, CUSIP, Intrinio ID)
  # @option opts [Date] :start_date Limit ratings to those on or after this date
  # @option opts [Date] :end_date Limit ratings to those on or before this date
  # @option opts [Float] :mean_greater Return only records with a mean (average) higher than this value
  # @option opts [Float] :mean_less Return only records with a mean (average) lower than this value
  # @option opts [Integer] :strong_buys_greater Return only records with more than this many Strong Buy recommendations
  # @option opts [Integer] :strong_buys_less Return only records with fewer than this many Strong Buy recommendations
  # @option opts [Integer] :buys_greater Return only records with more than this many Buy recommendations
  # @option opts [Integer] :buys_less Return only records with fewer than this many Buy recommendations
  # @option opts [Integer] :holds_greater Return only records with more than this many Hold recommendations
  # @option opts [Integer] :holds_less Return only records with fewer than this many Hold recommendations
  # @option opts [Integer] :sells_greater Return only records with more than this many Sell recommendations
  # @option opts [Integer] :sells_less Return only records with fewer than this many Sell recommendations
  # @option opts [Integer] :strong_sells_greater Return only records with more than this many Strong Sell recommendations
  # @option opts [Integer] :strong_sells_less Return only records with fewer than this many Strong Sell recommendations
  # @option opts [Integer] :total_greater Return only records with more than this many recommendations, regardless of type
  # @option opts [Integer] :total_less Return only records with fewer than this many recommendations, regardless of type
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksAnalystRatings]
  describe 'get_zacks_analyst_ratings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_eps_estimates
  # Zacks EPS Estimates
  # Returns Zacks consensus earnings-per-share (EPS) data for all Companies.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
  # @option opts [Date] :start_date Limit EPS estimates to those on or after this date
  # @option opts [Date] :end_date Limit EPS estimates to those on or before this date
  # @option opts [Integer] :fiscal_year Only for the given fiscal year
  # @option opts [String] :fiscal_period The fiscal period
  # @option opts [Integer] :calendar_year Only for the given calendar year
  # @option opts [String] :calendar_period The calendar period
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksEPSEstimates]
  describe 'get_zacks_eps_estimates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_eps_growth_rates
  # Zacks EPS Growth Rates
  # Returns the latest Zacks EPS growth rates
  # @param [Hash] opts the optional parameters
  # @option opts [String] :company Filings for the given &#x60;company&#x60; identifier (ticker, CIK, LEI, Intrinio ID)
  # @option opts [String] :industry_group_name Return only growth rates for companies in the given Zacks industry group name
  # @option opts [String] :industry_group_number Return only growth rates for companies in the given Zacks industry group number
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksEPSGrowthRates]
  describe 'get_zacks_eps_growth_rates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_eps_surprises
  # Zacks EPS Surprises
  # Returns Zacks eps surprise data for all Securities.
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_date Limit EPS surprises to those on or after this date
  # @option opts [Date] :end_date Limit EPS surprises to those on or before this date
  # @option opts [Float] :eps_actual_greater Return only records with an actual EPS higher than this value
  # @option opts [Float] :eps_actual_less Return only records with an actual EPS lower than this value
  # @option opts [Float] :eps_mean_estimate_greater Return only records with an EPS mean estimate greater than this value
  # @option opts [Float] :eps_mean_estimate_less Return only records with an EPS mean estimate lower than this value
  # @option opts [Float] :eps_amount_diff_greater Return only records with an EPS amount difference greater than this value
  # @option opts [Float] :eps_amount_diff_less Return only records with an EPS amount difference less than this value
  # @option opts [Float] :eps_percent_diff_greater Return only records with an EPS percent difference greater than this value
  # @option opts [Float] :eps_percent_diff_less Return only records with an EPS percent difference less than this value
  # @option opts [Float] :eps_count_estimate_greater Return only records with an EPS count estimate greater than this value
  # @option opts [Float] :eps_count_estimate_less Return only records with an EPS count estimate less than this value
  # @option opts [Float] :eps_std_dev_estimate_greater Return only records with an EPS standard deviation greater than this value
  # @option opts [Float] :eps_std_dev_estimate_less Return only records with an EPS standard deviation less than this value
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksEPSSurprises]
  describe 'get_zacks_eps_surprises test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_etf_holdings
  # Zacks ETF Holdings
  # Returns Zacks ETF holdings data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :etf_ticker Return holdings of the ETF with the given ticker
  # @option opts [String] :holding_symbol Return holdings where the instrument being held has the given trading symbol
  # @option opts [Float] :weight_greater Return on the holdings with a weight greater than
  # @option opts [Float] :weight_less Return on the holdings with a weight less than
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksETFHoldings]
  describe 'get_zacks_etf_holdings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_institutional_holding_companies
  # Zacks Institutional Holding Companies
  # Returns Zacks institutional holding companies data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ticker Return companies with the given ticker
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksInstitutionalHoldingCompanies]
  describe 'get_zacks_institutional_holding_companies test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_institutional_holding_owners
  # Zacks Institutional Holding Owners
  # Returns Zacks institutional holding owners data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cik Return owners with the given Central Index Key (CIK)
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksInstitutionalHoldingOwners]
  describe 'get_zacks_institutional_holding_owners test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_institutional_holdings
  # Zacks Institutional Holdings
  # Returns Zacks institutional holdings data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ticker Return holdings where the company being held has the given ticker
  # @option opts [String] :owner_cik Return holdings where the owner/holder has the given Central Index Key (CIK)
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksInstitutionalHoldings]
  describe 'get_zacks_institutional_holdings test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_long_term_growth_rates
  # Zacks Long Term Growth Rates
  # Returns the latest Zacks long term growth rates
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier A Security identifier (Ticker, FIGI, ISIN, CUSIP, Intrinio ID)
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksLongTermGrowthRates]
  describe 'get_zacks_long_term_growth_rates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_sales_surprises
  # Zacks Sales Surprises
  # Returns Zacks sales surprise data for all Securities.
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_date Limit sales surprises to those on or after this date
  # @option opts [Date] :end_date Limit sales surprises to those on or before this date
  # @option opts [Float] :sales_actual_greater Return only records with an actual sales higher than this value
  # @option opts [Float] :sales_actual_less Return only records with an actual sales lower than this value
  # @option opts [Float] :sales_mean_estimate_greater Return only records with a sales mean estimate greater than this value
  # @option opts [Float] :sales_mean_estimate_less Return only records with a sales mean estimate lower than this value
  # @option opts [Float] :sales_amount_diff_greater Return only records with a sales amount difference greater than this value
  # @option opts [Float] :sales_amount_diff_less Return only records with a sales amount difference less than this value
  # @option opts [Float] :sales_percent_diff_greater Return only records with a sales percent difference greater than this value
  # @option opts [Float] :sales_percent_diff_less Return only records with a sales percent difference less than this value
  # @option opts [Float] :sales_count_estimate_greater Return only records with a sales count estimate greater than this value
  # @option opts [Float] :sales_count_estimate_less Return only records with a sales count estimate less than this value
  # @option opts [Float] :sales_std_dev_estimate_greater Return only records with a sales standard deviation greater than this value
  # @option opts [Float] :sales_std_dev_estimate_less Return only records with a sales standard deviation less than this value
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksSalesSurprises]
  describe 'get_zacks_sales_surprises test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_zacks_target_price_consensuses
  # Zacks Target Price Consensuses
  # Returns the latest Zacks target price consensus data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :identifier Filings for the given &#x60;company&#x60; identifier (ticker, CIK, LEI, Intrinio ID)
  # @option opts [String] :industry_group_number Return only growth rates for companies in the given Zacks industry group number
  # @option opts [Integer] :page_size The number of results to return
  # @option opts [String] :next_page Gets the next page of data from a previous API call
  # @return [ApiResponseZacksTargetPriceConsensuses]
  describe 'get_zacks_target_price_consensuses test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
