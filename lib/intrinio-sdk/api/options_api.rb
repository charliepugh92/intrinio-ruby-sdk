=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.8.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module Intrinio
  class OptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Options
    # Returns the master list of option contracts for a given symbol.
    # @param symbol The option symbol, corresponding to the underlying security.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type The option contract type.
    # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
    # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
    # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
    # @option opts [String] :expiration The expiration date of the option contract. This will return options contracts with expiration dates on this date.
    # @option opts [String] :expiration_after The expiration date of the option contract. This will return options contracts with expiration dates after this date.
    # @option opts [String] :expiration_before The expiration date of the option contract. This will return options contracts with expiration dates before this date.
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseOptions]
    def get_options(symbol, opts = {})
      data, _status_code, _headers = get_options_with_http_info(symbol, opts)
      return data
    end

    # Options
    # Returns the master list of option contracts for a given symbol.
    # @param symbol The option symbol, corresponding to the underlying security.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type The option contract type.
    # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
    # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
    # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
    # @option opts [String] :expiration The expiration date of the option contract. This will return options contracts with expiration dates on this date.
    # @option opts [String] :expiration_after The expiration date of the option contract. This will return options contracts with expiration dates after this date.
    # @option opts [String] :expiration_before The expiration date of the option contract. This will return options contracts with expiration dates before this date.
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseOptions, Fixnum, Hash)>] ApiResponseOptions data, response status code and response headers
    def get_options_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OptionsApi.get_options ..."
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling OptionsApi.get_options"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['call', 'put'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of call, put'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling OptionsApi.get_options, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/options/{symbol}".sub('{' + 'symbol' + '}', symbol.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'strike'] = opts[:'strike'] if !opts[:'strike'].nil?
      query_params[:'strike_greater_than'] = opts[:'strike_greater_than'] if !opts[:'strike_greater_than'].nil?
      query_params[:'strike_less_than'] = opts[:'strike_less_than'] if !opts[:'strike_less_than'].nil?
      query_params[:'expiration'] = opts[:'expiration'] if !opts[:'expiration'].nil?
      query_params[:'expiration_after'] = opts[:'expiration_after'] if !opts[:'expiration_after'].nil?
      query_params[:'expiration_before'] = opts[:'expiration_before'] if !opts[:'expiration_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseOptions')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionsApi#get_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Options Chain
    # Returns all options contracts and their prices for the given symbol and expiration date.
    # @param symbol The option symbol, corresponding to the underlying security.
    # @param expiration The expiration date of the options contract
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :date The date of the option price. Returns option prices on this date.
    # @option opts [String] :type The option contract type.
    # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
    # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
    # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
    # @option opts [String] :moneyness The moneyness of the options contracts to return. &#39;all&#39; will return all options contracts. &#39;in_the_money&#39; will return options contracts that are in the money (call options with strike prices below the current price, put options with strike prices above the current price). &#39;out_of_they_money&#39; will return options contracts that are out of the money (call options with strike prices above the current price, put options with strike prices below the current price). &#39;near_the_money&#39; will return options contracts that are $0.50 or less away from being in the money.
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @return [ApiResponseOptionsChain]
    def get_options_chain(symbol, expiration, opts = {})
      data, _status_code, _headers = get_options_chain_with_http_info(symbol, expiration, opts)
      return data
    end

    # Options Chain
    # Returns all options contracts and their prices for the given symbol and expiration date.
    # @param symbol The option symbol, corresponding to the underlying security.
    # @param expiration The expiration date of the options contract
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :date The date of the option price. Returns option prices on this date.
    # @option opts [String] :type The option contract type.
    # @option opts [Float] :strike The strike price of the option contract. This will return options contracts with strike price equal to this price.
    # @option opts [Float] :strike_greater_than The strike price of the option contract. This will return options contracts with strike prices greater than this price.
    # @option opts [Float] :strike_less_than The strike price of the option contract. This will return options contracts with strike prices less than this price.
    # @option opts [String] :moneyness The moneyness of the options contracts to return. &#39;all&#39; will return all options contracts. &#39;in_the_money&#39; will return options contracts that are in the money (call options with strike prices below the current price, put options with strike prices above the current price). &#39;out_of_they_money&#39; will return options contracts that are out of the money (call options with strike prices above the current price, put options with strike prices below the current price). &#39;near_the_money&#39; will return options contracts that are $0.50 or less away from being in the money.
    # @option opts [Integer] :page_size The number of results to return
    # @return [Array<(ApiResponseOptionsChain, Fixnum, Hash)>] ApiResponseOptionsChain data, response status code and response headers
    def get_options_chain_with_http_info(symbol, expiration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OptionsApi.get_options_chain ..."
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling OptionsApi.get_options_chain"
      end
      # verify the required parameter 'expiration' is set
      if @api_client.config.client_side_validation && expiration.nil?
        fail ArgumentError, "Missing the required parameter 'expiration' when calling OptionsApi.get_options_chain"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['call', 'put'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of call, put'
      end
      if @api_client.config.client_side_validation && opts[:'moneyness'] && !['all', 'in_the_money', 'out_of_the_money', 'near_the_money'].include?(opts[:'moneyness'])
        fail ArgumentError, 'invalid value for "moneyness", must be one of all, in_the_money, out_of_the_money, near_the_money'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling OptionsApi.get_options_chain, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/options/chain/{symbol}/{expiration}".sub('{' + 'symbol' + '}', symbol.to_s).sub('{' + 'expiration' + '}', expiration.to_s)

      # query parameters
      query_params = {}
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'strike'] = opts[:'strike'] if !opts[:'strike'].nil?
      query_params[:'strike_greater_than'] = opts[:'strike_greater_than'] if !opts[:'strike_greater_than'].nil?
      query_params[:'strike_less_than'] = opts[:'strike_less_than'] if !opts[:'strike_less_than'].nil?
      query_params[:'moneyness'] = opts[:'moneyness'] if !opts[:'moneyness'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseOptionsChain')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionsApi#get_options_chain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Options Expirations
    # Returns all option contract expiration dates for a given symbol.
    # @param symbol The option symbol, corresponding to the underlying security.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after Return option contract expiration dates after this date.
    # @option opts [String] :before Return option contract expiration dates before this date.
    # @return [ApiResponseOptionsExpirations]
    def get_options_expirations(symbol, opts = {})
      data, _status_code, _headers = get_options_expirations_with_http_info(symbol, opts)
      return data
    end

    # Options Expirations
    # Returns all option contract expiration dates for a given symbol.
    # @param symbol The option symbol, corresponding to the underlying security.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after Return option contract expiration dates after this date.
    # @option opts [String] :before Return option contract expiration dates before this date.
    # @return [Array<(ApiResponseOptionsExpirations, Fixnum, Hash)>] ApiResponseOptionsExpirations data, response status code and response headers
    def get_options_expirations_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OptionsApi.get_options_expirations ..."
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling OptionsApi.get_options_expirations"
      end
      # resource path
      local_var_path = "/options/expirations/{symbol}".sub('{' + 'symbol' + '}', symbol.to_s)

      # query parameters
      query_params = {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseOptionsExpirations')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionsApi#get_options_expirations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Option Prices
    # Returns all option prices for a given option contract identifier.
    # @param identifier The Intrinio ID or code of the options contract to request prices for.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Return option contract prices on or after this date.
    # @option opts [String] :end_date Return option contract prices on or before this date.
    # @option opts [Integer] :page_size The number of results to return (default to 100)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [ApiResponseOptionPrices]
    def get_options_prices(identifier, opts = {})
      data, _status_code, _headers = get_options_prices_with_http_info(identifier, opts)
      return data
    end

    # Option Prices
    # Returns all option prices for a given option contract identifier.
    # @param identifier The Intrinio ID or code of the options contract to request prices for.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Return option contract prices on or after this date.
    # @option opts [String] :end_date Return option contract prices on or before this date.
    # @option opts [Integer] :page_size The number of results to return
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(ApiResponseOptionPrices, Fixnum, Hash)>] ApiResponseOptionPrices data, response status code and response headers
    def get_options_prices_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OptionsApi.get_options_prices ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling OptionsApi.get_options_prices"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling OptionsApi.get_options_prices, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = "/options/prices/{identifier}".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page'] = opts[:'next_page'] if !opts[:'next_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponseOptionPrices')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionsApi#get_options_prices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
