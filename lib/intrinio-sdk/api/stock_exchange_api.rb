=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Marketplace, we offer a wide selection of financial data feeds sourced by our own proprietary processes as well as from many data vendors. The primary application of the Intrinio API is for use in third-party applications and integrations or for end-users utilizing the Excel add-in and Google Sheets add-on. The Intrinio API uses HTTPS verbs and a RESTful endpoint structure, which makes it easy to request data from Intrinio. Responses are delivered in JSON format. If you need additional help in using the API, go to our home page (https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module Intrinio
  class StockExchangeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Filter Stock Exchanges
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :city Filter by city
    # @option opts [String] :country Filter by country
    # @option opts [String] :country_code Filter by ISO country code
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<StockExchange>]
    def filter_stock_exchanges(opts = {})
      data, _status_code, _headers = filter_stock_exchanges_with_http_info(opts)
      return data
    end

    # Filter Stock Exchanges
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :city Filter by city
    # @option opts [String] :country Filter by country
    # @option opts [String] :country_code Filter by ISO country code
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<StockExchange>, Fixnum, Hash)>] Array<StockExchange> data, response status code and response headers
    def filter_stock_exchanges_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StockExchangeApi.filter_stock_exchanges ..."
      end
      # resource path
      local_var_path = "/stock_exchanges/filter"

      # query parameters
      query_params = {}
      query_params[:'city'] = opts[:'city'] if !opts[:'city'].nil?
      query_params[:'country'] = opts[:'country'] if !opts[:'country'].nil?
      query_params[:'country_code'] = opts[:'country_code'] if !opts[:'country_code'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['HttpHeaderApiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<StockExchange>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockExchangeApi#filter_stock_exchanges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get All Stock Exchanges
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<StockExchange>]
    def get_all_stock_exchanges(opts = {})
      data, _status_code, _headers = get_all_stock_exchanges_with_http_info(opts)
      return data
    end

    # Get All Stock Exchanges
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<StockExchange>, Fixnum, Hash)>] Array<StockExchange> data, response status code and response headers
    def get_all_stock_exchanges_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StockExchangeApi.get_all_stock_exchanges ..."
      end
      # resource path
      local_var_path = "/stock_exchanges"

      # query parameters
      query_params = {}
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['HttpHeaderApiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<StockExchange>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockExchangeApi#get_all_stock_exchanges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Stock Exchange by ID
    # 
    # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @return [StockExchange]
    def get_stock_exchange_by_id(identifier, opts = {})
      data, _status_code, _headers = get_stock_exchange_by_id_with_http_info(identifier, opts)
      return data
    end

    # Get Stock Exchange by ID
    # 
    # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(StockExchange, Fixnum, Hash)>] StockExchange data, response status code and response headers
    def get_stock_exchange_by_id_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StockExchangeApi.get_stock_exchange_by_id ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling StockExchangeApi.get_stock_exchange_by_id"
      end
      # resource path
      local_var_path = "/stock_exchanges/{identifier}".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['HttpHeaderApiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StockExchange')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockExchangeApi#get_stock_exchange_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Stock Prices by Exchange
    # Return daily Stock Prices for Securities on the Stock Exchange with `identifier` and on the `price_date` (or the latest date that prices are available)
    # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :date The date for which to return prices
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<StockPrice>]
    def get_stock_exchange_prices(identifier, opts = {})
      data, _status_code, _headers = get_stock_exchange_prices_with_http_info(identifier, opts)
      return data
    end

    # Get Stock Prices by Exchange
    # Return daily Stock Prices for Securities on the Stock Exchange with &#x60;identifier&#x60; and on the &#x60;price_date&#x60; (or the latest date that prices are available)
    # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :date The date for which to return prices
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<StockPrice>, Fixnum, Hash)>] Array<StockPrice> data, response status code and response headers
    def get_stock_exchange_prices_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StockExchangeApi.get_stock_exchange_prices ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling StockExchangeApi.get_stock_exchange_prices"
      end
      # resource path
      local_var_path = "/stock_exchanges/{identifier}/prices".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['HttpHeaderApiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<StockPrice>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockExchangeApi#get_stock_exchange_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Securities by Exchange
    # Return Securities on the Stock Exchange with `identifier`
    # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<Security>]
    def get_stock_exchange_securities(identifier, opts = {})
      data, _status_code, _headers = get_stock_exchange_securities_with_http_info(identifier, opts)
      return data
    end

    # Get Securities by Exchange
    # Return Securities on the Stock Exchange with &#x60;identifier&#x60;
    # @param identifier A Stock Exchange identifier (MIC or Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<Security>, Fixnum, Hash)>] Array<Security> data, response status code and response headers
    def get_stock_exchange_securities_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StockExchangeApi.get_stock_exchange_securities ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling StockExchangeApi.get_stock_exchange_securities"
      end
      # resource path
      local_var_path = "/stock_exchanges/{identifier}/securities".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['HttpHeaderApiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Security>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockExchangeApi#get_stock_exchange_securities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
