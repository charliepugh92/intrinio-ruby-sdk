# Intrinio Ruby SDK

WARNING: THIS IS IS A BETA - DO NOT USE IN PRODUCTION.

Intrinio - the Ruby gem for the Intrinio API

Welcome to the Intrinio API! Through our Marketplace, we offer a wide selection of financial data feeds sourced by our own proprietary processes as well as from many data vendors. The primary application of the Intrinio API is for use in third-party applications and integrations or for end-users utilizing the Excel add-in and Google Sheets add-on. The Intrinio API uses HTTPS verbs and a RESTful endpoint structure, which makes it easy to request data from Intrinio. Responses are delivered in JSON format. If you need additional help in using the API, go to our home page (https://intrinio.com) and click on the chat icon in the lower right corner.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0.0
- Package version: 0.0.1


## Installation

### Option 1: Install from Git

Add the following in the Gemfile:

    gem 'intrinio-sdk', :git => 'https://github.com/intrinio/ruby-sdk.git'

### Option 2: Build a gem

To build the Ruby code into a gem:

```shell
gem build intrinio-sdk.gemspec
```

Then install the gem locally:

```shell
gem install ./intrinio-sdk-0.0.1.gem
```
(for development, run `gem install --dev ./intrinio-sdk-0.0.1.gem` to install the development dependencies)

Finally add this to the Gemfile:

    gem 'intrinio-sdk', '~> 0.0.1'

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'intrinio-sdk'

# Setup authorization
Intrinio.configure do |config|
  config.api_key['api-key'] = 'YOUR API KEY'
end

company_api = Intrinio::CompanyApi.new

begin
  result = company_api.filter_companies()
  p result
rescue Intrinio::ApiError => e
  puts "Exception when calling CompanyApi->filter_companies: #{e}"
end
```

## API Endpoints

All URIs are relative to *https://api-v2.intrinio.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Intrinio::CompanyApi* | [**filter_companies**](docs/CompanyApi.md#filter_companies) | **GET** /companies/filter | Filter Companies
*Intrinio::CompanyApi* | [**filter_company_fundamentals**](docs/CompanyApi.md#filter_company_fundamentals) | **GET** /companies/{identifier}/fundamentals/filter | Filter Fundamentals for a Company
*Intrinio::CompanyApi* | [**get_all_companies**](docs/CompanyApi.md#get_all_companies) | **GET** /companies | Get All Companies
*Intrinio::CompanyApi* | [**get_all_company_filings**](docs/CompanyApi.md#get_all_company_filings) | **GET** /companies/{identifier}/filings | Filings
*Intrinio::CompanyApi* | [**get_all_company_fundamentals**](docs/CompanyApi.md#get_all_company_fundamentals) | **GET** /companies/{identifier}/fundamentals | Get All Fundamentals for a Company
*Intrinio::CompanyApi* | [**get_company**](docs/CompanyApi.md#get_company) | **GET** /companies/{identifier} | Get a Company by ID
*Intrinio::CompanyApi* | [**get_company_data_point_number**](docs/CompanyApi.md#get_company_data_point_number) | **GET** /companies/{identifier}/data_point/{item}/number | Get Company Data Point (Number)
*Intrinio::CompanyApi* | [**get_company_data_point_text**](docs/CompanyApi.md#get_company_data_point_text) | **GET** /companies/{identifier}/data_point/{item}/text | Get Company Data Point (Text)
*Intrinio::CompanyApi* | [**get_company_historical_data**](docs/CompanyApi.md#get_company_historical_data) | **GET** /companies/{identifier}/historical_data/{item} | Get Company Historical Data
*Intrinio::CompanyApi* | [**get_news**](docs/CompanyApi.md#get_news) | **GET** /companies/{identifier}/news | News
*Intrinio::CompanyApi* | [**lookup_company_fundamental**](docs/CompanyApi.md#lookup_company_fundamental) | **GET** /companies/{identifier}/fundamentals/lookup/{statement_code}/{fiscal_year}/{fiscal_period} | Lookup a Fundamental for a Company
*Intrinio::CompanyApi* | [**search_companies**](docs/CompanyApi.md#search_companies) | **GET** /companies/search | Search Companies
*Intrinio::DataPointApi* | [**get_data_point_number**](docs/DataPointApi.md#get_data_point_number) | **GET** /data_point/{identifier}/{item}/number | Get a Data Point (Number)
*Intrinio::DataPointApi* | [**get_data_point_text**](docs/DataPointApi.md#get_data_point_text) | **GET** /data_point/{identifier}/{item}/text | Get a Data Point (Text)
*Intrinio::FilingApi* | [**filter_filings**](docs/FilingApi.md#filter_filings) | **GET** /filings/filter | Filter Filings
*Intrinio::FilingApi* | [**get_all_filings**](docs/FilingApi.md#get_all_filings) | **GET** /filings | Get All Filings
*Intrinio::FilingApi* | [**get_filing_by_id**](docs/FilingApi.md#get_filing_by_id) | **GET** /filings/{id} | Get a Filing by ID
*Intrinio::FundamentalsApi* | [**get_fundamental_by_id**](docs/FundamentalsApi.md#get_fundamental_by_id) | **GET** /fundamentals/{id} | Get a Fundamental by ID
*Intrinio::FundamentalsApi* | [**get_fundamental_reported_financials**](docs/FundamentalsApi.md#get_fundamental_reported_financials) | **GET** /fundamentals/{id}/reported_financials | Get Reported Financials for a Fundamental
*Intrinio::FundamentalsApi* | [**get_fundamental_standardized_financials**](docs/FundamentalsApi.md#get_fundamental_standardized_financials) | **GET** /fundamentals/{id}/standardized_financials | Get Standardized Financials for a Fundamental
*Intrinio::FundamentalsApi* | [**lookup_fundamental**](docs/FundamentalsApi.md#lookup_fundamental) | **GET** /fundamentals/lookup/{identifier}/{statement_code}/{fiscal_year}/{fiscal_period} | Lookup a Fundamental
*Intrinio::HistoricalDataApi* | [**get_historical_data**](docs/HistoricalDataApi.md#get_historical_data) | **GET** /historical_data/{identifier}/{item} | Get Historical Data
*Intrinio::IndexApi* | [**get_all_economic_indices**](docs/IndexApi.md#get_all_economic_indices) | **GET** /indices/economic | Get ALl Economic Indices
*Intrinio::IndexApi* | [**get_all_sic_indices**](docs/IndexApi.md#get_all_sic_indices) | **GET** /indices/sic | Get All SIC Indices
*Intrinio::IndexApi* | [**get_all_stock_market_indices**](docs/IndexApi.md#get_all_stock_market_indices) | **GET** /indices/stock_market | Get All Stock Market Indices
*Intrinio::IndexApi* | [**get_economic_index_by_id**](docs/IndexApi.md#get_economic_index_by_id) | **GET** /indices/economic/{identifier} | Get an Economic Index by ID
*Intrinio::IndexApi* | [**get_economic_index_data_point_number**](docs/IndexApi.md#get_economic_index_data_point_number) | **GET** /indices/economic/{identifier}/data_point/{item}/number | Get Economic Index Data Point (Number)
*Intrinio::IndexApi* | [**get_economic_index_data_point_text**](docs/IndexApi.md#get_economic_index_data_point_text) | **GET** /indices/economic/{identifier}/data_point/{item}/text | Get Economic Index Data Point (Text)
*Intrinio::IndexApi* | [**get_economic_index_historical_data**](docs/IndexApi.md#get_economic_index_historical_data) | **GET** /indices/economic/{identifier}/historical_data/{item} | Get Economic Index Historical Data
*Intrinio::IndexApi* | [**get_sic_index_by_id**](docs/IndexApi.md#get_sic_index_by_id) | **GET** /indices/sic/{identifier} | Get an SIC Index by ID
*Intrinio::IndexApi* | [**get_sic_index_data_point_number**](docs/IndexApi.md#get_sic_index_data_point_number) | **GET** /indices/sic/{identifier}/data_point/{item}/number | Get SIC Index Data Point (Number)
*Intrinio::IndexApi* | [**get_sic_index_data_point_text**](docs/IndexApi.md#get_sic_index_data_point_text) | **GET** /indices/sic/{identifier}/data_point/{item}/text | Get SIC Index Data Point (Text)
*Intrinio::IndexApi* | [**get_sic_index_historical_data**](docs/IndexApi.md#get_sic_index_historical_data) | **GET** /indices/sic/{identifier}/historical_data/{item} | Get SIC Index Historical Data
*Intrinio::IndexApi* | [**get_stock_market_index_by_id**](docs/IndexApi.md#get_stock_market_index_by_id) | **GET** /indices/stock_market/{identifier} | Get a Stock Market Index by ID
*Intrinio::IndexApi* | [**get_stock_market_index_data_point_number**](docs/IndexApi.md#get_stock_market_index_data_point_number) | **GET** /indices/stock_market/{identifier}/data_point/{item}/number | Get Stock Market Index Data Point (Number)
*Intrinio::IndexApi* | [**get_stock_market_index_data_point_text**](docs/IndexApi.md#get_stock_market_index_data_point_text) | **GET** /indices/stock_market/{identifier}/data_point/{item}/text | Get Stock Market Index Data Point (Text)
*Intrinio::IndexApi* | [**get_stock_market_index_historical_data**](docs/IndexApi.md#get_stock_market_index_historical_data) | **GET** /indices/stock_market/{identifier}/historical_data/{item} | Get Stock Market Index Historical Data
*Intrinio::IndexApi* | [**search_economic_indices**](docs/IndexApi.md#search_economic_indices) | **GET** /indices/economic/search | Search Economic Indices
*Intrinio::IndexApi* | [**search_sic_indices**](docs/IndexApi.md#search_sic_indices) | **GET** /indices/sic/search | Search SIC Indices
*Intrinio::IndexApi* | [**search_stock_markets_indices**](docs/IndexApi.md#search_stock_markets_indices) | **GET** /indices/stock_market/search | Search Stock Market Indices
*Intrinio::SecurityApi* | [**get_all_securities**](docs/SecurityApi.md#get_all_securities) | **GET** /securities | Get All Securiites
*Intrinio::SecurityApi* | [**get_security_by_id**](docs/SecurityApi.md#get_security_by_id) | **GET** /securities/{identifier} | Get a Security by ID
*Intrinio::SecurityApi* | [**get_security_data_point_number**](docs/SecurityApi.md#get_security_data_point_number) | **GET** /securities/{identifier}/data_point/{item}/number | Get Security Data Point (Number)
*Intrinio::SecurityApi* | [**get_security_data_point_text**](docs/SecurityApi.md#get_security_data_point_text) | **GET** /securities/{identifier}/data_point/{item}/text | Get Security Data Point (Text)
*Intrinio::SecurityApi* | [**get_security_historical_data**](docs/SecurityApi.md#get_security_historical_data) | **GET** /securities/{identifier}/historical_data/{item} | Get Security Historical Data
*Intrinio::SecurityApi* | [**get_security_stock_prices**](docs/SecurityApi.md#get_security_stock_prices) | **GET** /securities/{identifier}/prices | Get Stock Prices for Security
*Intrinio::SecurityApi* | [**screen_securities**](docs/SecurityApi.md#screen_securities) | **POST** /securities/screen | Screen Securities
*Intrinio::SecurityApi* | [**search_securities**](docs/SecurityApi.md#search_securities) | **GET** /securities/search | Search Securities
*Intrinio::StandardizedTagApi* | [**filter_standardized_tags**](docs/StandardizedTagApi.md#filter_standardized_tags) | **GET** /standardized_tags/filter | Filter Standardized Tags
*Intrinio::StandardizedTagApi* | [**get_all_standardized_tags**](docs/StandardizedTagApi.md#get_all_standardized_tags) | **GET** /standardized_tags | Get All Standardized Tags
*Intrinio::StandardizedTagApi* | [**get_standardized_tag_by_id**](docs/StandardizedTagApi.md#get_standardized_tag_by_id) | **GET** /standardized_tags/{tag_id} | Get a Standardized Tag by ID
*Intrinio::StandardizedTagApi* | [**get_standardized_tag_data_point_number**](docs/StandardizedTagApi.md#get_standardized_tag_data_point_number) | **GET** /standardized_tags/{id}/data_point/{identifier}/number | Get Data Point (Number) for The Standardized Tag
*Intrinio::StandardizedTagApi* | [**get_standardized_tag_data_point_text**](docs/StandardizedTagApi.md#get_standardized_tag_data_point_text) | **GET** /standardized_tags/{id}/data_point/{identifier}/text | Get Data Point (Text) for the Standardized Tag
*Intrinio::StandardizedTagApi* | [**get_standardized_tag_historical_data**](docs/StandardizedTagApi.md#get_standardized_tag_historical_data) | **GET** /standardized_tags/{id}/historical_data/{identifier} | Get Historical Data for the Standardized Tag
*Intrinio::StandardizedTagApi* | [**search_standardized_tags**](docs/StandardizedTagApi.md#search_standardized_tags) | **GET** /standardized_tags/search | Search Standardized Tags
*Intrinio::StockExchangeApi* | [**filter_stock_exchanges**](docs/StockExchangeApi.md#filter_stock_exchanges) | **GET** /stock_exchanges/filter | Filter Stock Exchanges
*Intrinio::StockExchangeApi* | [**get_all_stock_exchanges**](docs/StockExchangeApi.md#get_all_stock_exchanges) | **GET** /stock_exchanges | Get All Stock Exchanges
*Intrinio::StockExchangeApi* | [**get_stock_exchange_by_id**](docs/StockExchangeApi.md#get_stock_exchange_by_id) | **GET** /stock_exchanges/{identifier} | Get Stock Exchange by ID
*Intrinio::StockExchangeApi* | [**get_stock_exchange_prices**](docs/StockExchangeApi.md#get_stock_exchange_prices) | **GET** /stock_exchanges/{identifier}/prices | Get Stock Prices by Exchange
*Intrinio::StockExchangeApi* | [**get_stock_exchange_securities**](docs/StockExchangeApi.md#get_stock_exchange_securities) | **GET** /stock_exchanges/{identifier}/securities | Get Securities by Exchange


## Models

 - [Intrinio::Company](docs/Company.md)
 - [Intrinio::CompanyNews](docs/CompanyNews.md)
 - [Intrinio::CompanySummary](docs/CompanySummary.md)
 - [Intrinio::DataPointNumber](docs/DataPointNumber.md)
 - [Intrinio::DataPointText](docs/DataPointText.md)
 - [Intrinio::EconomicIndex](docs/EconomicIndex.md)
 - [Intrinio::EconomicIndexSummary](docs/EconomicIndexSummary.md)
 - [Intrinio::Filing](docs/Filing.md)
 - [Intrinio::FilingSummary](docs/FilingSummary.md)
 - [Intrinio::Fundamental](docs/Fundamental.md)
 - [Intrinio::FundamentalSummary](docs/FundamentalSummary.md)
 - [Intrinio::HistoricalData](docs/HistoricalData.md)
 - [Intrinio::ReportedFinancial](docs/ReportedFinancial.md)
 - [Intrinio::ReportedTag](docs/ReportedTag.md)
 - [Intrinio::SICIndex](docs/SICIndex.md)
 - [Intrinio::Security](docs/Security.md)
 - [Intrinio::SecurityScreenClause](docs/SecurityScreenClause.md)
 - [Intrinio::SecurityScreenGroup](docs/SecurityScreenGroup.md)
 - [Intrinio::SecurityScreenResult](docs/SecurityScreenResult.md)
 - [Intrinio::SecurityScreenResultData](docs/SecurityScreenResultData.md)
 - [Intrinio::SecuritySummary](docs/SecuritySummary.md)
 - [Intrinio::StandardizedFinancial](docs/StandardizedFinancial.md)
 - [Intrinio::StandardizedTag](docs/StandardizedTag.md)
 - [Intrinio::StockExchange](docs/StockExchange.md)
 - [Intrinio::StockMarketIndex](docs/StockMarketIndex.md)
 - [Intrinio::StockMarketIndexSummary](docs/StockMarketIndexSummary.md)
 - [Intrinio::StockPrice](docs/StockPrice.md)
 - [Intrinio::StockPriceSummary](docs/StockPriceSummary.md)

