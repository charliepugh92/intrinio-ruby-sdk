=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Marketplace, we offer a wide selection of financial data feeds sourced by our own proprietary processes as well as from many data vendors. The primary application of the Intrinio API is for use in third-party applications and integrations or for end-users utilizing the Excel add-in and Google Sheets add-on. The Intrinio API uses HTTPS verbs and a RESTful endpoint structure, which makes it easy to request data from Intrinio. Responses are delivered in JSON format. If you need additional help in using the API, go to our home page (https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module Intrinio
  class CompanyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Filter Companies
    # Returns Companies matching the specified filters
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :last_filing_date Last filing date
    # @option opts [String] :sic Standard Industrial Classification code
    # @option opts [String] :template Template
    # @option opts [String] :sector Industry sector
    # @option opts [String] :industry_category Industry category
    # @option opts [String] :industry_group Industry group
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<CompanySummary>]
    def filter_companies(opts = {})
      data, _status_code, _headers = filter_companies_with_http_info(opts)
      return data
    end

    # Filter Companies
    # Returns Companies matching the specified filters
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :last_filing_date Last filing date
    # @option opts [String] :sic Standard Industrial Classification code
    # @option opts [String] :template Template
    # @option opts [String] :sector Industry sector
    # @option opts [String] :industry_category Industry category
    # @option opts [String] :industry_group Industry group
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<CompanySummary>, Fixnum, Hash)>] Array<CompanySummary> data, response status code and response headers
    def filter_companies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.filter_companies ..."
      end
      # resource path
      local_var_path = "/companies/filter"

      # query parameters
      query_params = {}
      query_params[:'last_filing_date'] = opts[:'last_filing_date'] if !opts[:'last_filing_date'].nil?
      query_params[:'sic'] = opts[:'sic'] if !opts[:'sic'].nil?
      query_params[:'template'] = opts[:'template'] if !opts[:'template'].nil?
      query_params[:'sector'] = opts[:'sector'] if !opts[:'sector'].nil?
      query_params[:'industry_category'] = opts[:'industry_category'] if !opts[:'industry_category'].nil?
      query_params[:'industry_group'] = opts[:'industry_group'] if !opts[:'industry_group'].nil?
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
        :return_type => 'Array<CompanySummary>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#filter_companies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filter Fundamentals for a Company
    # Returns Fundamentals for the Company with the given `identifier` and matching the specified filters
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :filed_after Filed on or after this date
    # @option opts [Date] :filed_before Filed on or before this date
    # @option opts [BOOLEAN] :reported_only Only as-reported fundamentals
    # @option opts [Integer] :fiscal_year Only for the given fiscal year
    # @option opts [String] :statement_code Only of the given statement code
    # @option opts [String] :type Only of the given type
    # @option opts [Date] :start_date Only on or after the given date
    # @option opts [Date] :end_date Only on or after the given date
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<Fundamental>]
    def filter_company_fundamentals(identifier, opts = {})
      data, _status_code, _headers = filter_company_fundamentals_with_http_info(identifier, opts)
      return data
    end

    # Filter Fundamentals for a Company
    # Returns Fundamentals for the Company with the given &#x60;identifier&#x60; and matching the specified filters
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :filed_after Filed on or after this date
    # @option opts [Date] :filed_before Filed on or before this date
    # @option opts [BOOLEAN] :reported_only Only as-reported fundamentals
    # @option opts [Integer] :fiscal_year Only for the given fiscal year
    # @option opts [String] :statement_code Only of the given statement code
    # @option opts [String] :type Only of the given type
    # @option opts [Date] :start_date Only on or after the given date
    # @option opts [Date] :end_date Only on or after the given date
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<Fundamental>, Fixnum, Hash)>] Array<Fundamental> data, response status code and response headers
    def filter_company_fundamentals_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.filter_company_fundamentals ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.filter_company_fundamentals"
      end
      if @api_client.config.client_side_validation && opts[:'statement_code'] && !['income_statement', 'balance_sheet_statement', 'cash_flow_statement', 'calculations'].include?(opts[:'statement_code'])
        fail ArgumentError, 'invalid value for "statement_code", must be one of income_statement, balance_sheet_statement, cash_flow_statement, calculations'
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['QTR', 'YTD', 'FY', 'TTM'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of QTR, YTD, FY, TTM'
      end
      # resource path
      local_var_path = "/companies/{identifier}/fundamentals/filter".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'filed_after'] = opts[:'filed_after'] if !opts[:'filed_after'].nil?
      query_params[:'filed_before'] = opts[:'filed_before'] if !opts[:'filed_before'].nil?
      query_params[:'reported_only'] = opts[:'reported_only'] if !opts[:'reported_only'].nil?
      query_params[:'fiscal_year'] = opts[:'fiscal_year'] if !opts[:'fiscal_year'].nil?
      query_params[:'statement_code'] = opts[:'statement_code'] if !opts[:'statement_code'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
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
        :return_type => 'Array<Fundamental>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#filter_company_fundamentals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get All Companies
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<CompanySummary>]
    def get_all_companies(opts = {})
      data, _status_code, _headers = get_all_companies_with_http_info(opts)
      return data
    end

    # Get All Companies
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<CompanySummary>, Fixnum, Hash)>] Array<CompanySummary> data, response status code and response headers
    def get_all_companies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.get_all_companies ..."
      end
      # resource path
      local_var_path = "/companies"

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
        :return_type => 'Array<CompanySummary>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#get_all_companies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Filings
    # Returns a complete list of SEC filings for the Company with the given `identifier`
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<FilingSummary>]
    def get_all_company_filings(identifier, opts = {})
      data, _status_code, _headers = get_all_company_filings_with_http_info(identifier, opts)
      return data
    end

    # Filings
    # Returns a complete list of SEC filings for the Company with the given &#x60;identifier&#x60;
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<FilingSummary>, Fixnum, Hash)>] Array<FilingSummary> data, response status code and response headers
    def get_all_company_filings_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.get_all_company_filings ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.get_all_company_filings"
      end
      # resource path
      local_var_path = "/companies/{identifier}/filings".sub('{' + 'identifier' + '}', identifier.to_s)

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
        :return_type => 'Array<FilingSummary>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#get_all_company_filings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get All Fundamentals for a Company
    # Returns all Fundamentals for the Company with the given `identifier`
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<Fundamental>]
    def get_all_company_fundamentals(identifier, opts = {})
      data, _status_code, _headers = get_all_company_fundamentals_with_http_info(identifier, opts)
      return data
    end

    # Get All Fundamentals for a Company
    # Returns all Fundamentals for the Company with the given &#x60;identifier&#x60;
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<Fundamental>, Fixnum, Hash)>] Array<Fundamental> data, response status code and response headers
    def get_all_company_fundamentals_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.get_all_company_fundamentals ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.get_all_company_fundamentals"
      end
      # resource path
      local_var_path = "/companies/{identifier}/fundamentals".sub('{' + 'identifier' + '}', identifier.to_s)

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
        :return_type => 'Array<Fundamental>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#get_all_company_fundamentals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Company by ID
    # 
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @return [Company]
    def get_company(identifier, opts = {})
      data, _status_code, _headers = get_company_with_http_info(identifier, opts)
      return data
    end

    # Get a Company by ID
    # 
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Company, Fixnum, Hash)>] Company data, response status code and response headers
    def get_company_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.get_company ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.get_company"
      end
      # resource path
      local_var_path = "/companies/{identifier}".sub('{' + 'identifier' + '}', identifier.to_s)

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
        :return_type => 'Company')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#get_company\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Company Data Point (Number)
    # Returns a numeric value for the given `item` for the Company with the given `identifier`
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param item An Intrinio data tag
    # @param [Hash] opts the optional parameters
    # @return [DataPointNumber]
    def get_company_data_point_number(identifier, item, opts = {})
      data, _status_code, _headers = get_company_data_point_number_with_http_info(identifier, item, opts)
      return data
    end

    # Get Company Data Point (Number)
    # Returns a numeric value for the given &#x60;item&#x60; for the Company with the given &#x60;identifier&#x60;
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param item An Intrinio data tag
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataPointNumber, Fixnum, Hash)>] DataPointNumber data, response status code and response headers
    def get_company_data_point_number_with_http_info(identifier, item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.get_company_data_point_number ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.get_company_data_point_number"
      end
      # verify the required parameter 'item' is set
      if @api_client.config.client_side_validation && item.nil?
        fail ArgumentError, "Missing the required parameter 'item' when calling CompanyApi.get_company_data_point_number"
      end
      # resource path
      local_var_path = "/companies/{identifier}/data_point/{item}/number".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'item' + '}', item.to_s)

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
        :return_type => 'DataPointNumber')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#get_company_data_point_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Company Data Point (Text)
    # Returns a text value for the given `item` for the Company with the given `identifier`
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param item An Intrinio data tag
    # @param [Hash] opts the optional parameters
    # @return [DataPointText]
    def get_company_data_point_text(identifier, item, opts = {})
      data, _status_code, _headers = get_company_data_point_text_with_http_info(identifier, item, opts)
      return data
    end

    # Get Company Data Point (Text)
    # Returns a text value for the given &#x60;item&#x60; for the Company with the given &#x60;identifier&#x60;
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param item An Intrinio data tag
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataPointText, Fixnum, Hash)>] DataPointText data, response status code and response headers
    def get_company_data_point_text_with_http_info(identifier, item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.get_company_data_point_text ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.get_company_data_point_text"
      end
      # verify the required parameter 'item' is set
      if @api_client.config.client_side_validation && item.nil?
        fail ArgumentError, "Missing the required parameter 'item' when calling CompanyApi.get_company_data_point_text"
      end
      # resource path
      local_var_path = "/companies/{identifier}/data_point/{item}/text".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'item' + '}', item.to_s)

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
        :return_type => 'DataPointText')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#get_company_data_point_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Company Historical Data
    # Returns historical values for the given `item` and the Company with the given `identifier`
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param item Item
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter by type, when applicable
    # @option opts [Date] :start_date Get historical data on or after this date
    # @option opts [Date] :end_date Get historical data on or before this date
    # @option opts [String] :sort_order Sort by date &#x60;asc&#x60; or &#x60;desc&#x60; (default to desc)
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<HistoricalData>]
    def get_company_historical_data(identifier, item, opts = {})
      data, _status_code, _headers = get_company_historical_data_with_http_info(identifier, item, opts)
      return data
    end

    # Get Company Historical Data
    # Returns historical values for the given &#x60;item&#x60; and the Company with the given &#x60;identifier&#x60;
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param item Item
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter by type, when applicable
    # @option opts [Date] :start_date Get historical data on or after this date
    # @option opts [Date] :end_date Get historical data on or before this date
    # @option opts [String] :sort_order Sort by date &#x60;asc&#x60; or &#x60;desc&#x60;
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<HistoricalData>, Fixnum, Hash)>] Array<HistoricalData> data, response status code and response headers
    def get_company_historical_data_with_http_info(identifier, item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.get_company_historical_data ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.get_company_historical_data"
      end
      # verify the required parameter 'item' is set
      if @api_client.config.client_side_validation && item.nil?
        fail ArgumentError, "Missing the required parameter 'item' when calling CompanyApi.get_company_historical_data"
      end
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !['asc', 'desc'].include?(opts[:'sort_order'])
        fail ArgumentError, 'invalid value for "sort_order", must be one of asc, desc'
      end
      # resource path
      local_var_path = "/companies/{identifier}/historical_data/{item}".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'item' + '}', item.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'sort_order'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
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
        :return_type => 'Array<HistoricalData>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#get_company_historical_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # News
    # Returns news for the Company with the given `identifier`
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<CompanyNews>]
    def get_news(identifier, opts = {})
      data, _status_code, _headers = get_news_with_http_info(identifier, opts)
      return data
    end

    # News
    # Returns news for the Company with the given &#x60;identifier&#x60;
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<CompanyNews>, Fixnum, Hash)>] Array<CompanyNews> data, response status code and response headers
    def get_news_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.get_news ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.get_news"
      end
      # resource path
      local_var_path = "/companies/{identifier}/news".sub('{' + 'identifier' + '}', identifier.to_s)

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
        :return_type => 'Array<CompanyNews>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#get_news\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup a Fundamental for a Company
    # Returns the Fundamental for the Company with the given `identifier` and with the given parameters
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param statement_code The statement code
    # @param fiscal_period The fiscal period
    # @param fiscal_year The fiscal year
    # @param [Hash] opts the optional parameters
    # @return [Array<Fundamental>]
    def lookup_company_fundamental(identifier, statement_code, fiscal_period, fiscal_year, opts = {})
      data, _status_code, _headers = lookup_company_fundamental_with_http_info(identifier, statement_code, fiscal_period, fiscal_year, opts)
      return data
    end

    # Lookup a Fundamental for a Company
    # Returns the Fundamental for the Company with the given &#x60;identifier&#x60; and with the given parameters
    # @param identifier A Company identifier (Ticker, CIK, LEI, Intrinio ID)
    # @param statement_code The statement code
    # @param fiscal_period The fiscal period
    # @param fiscal_year The fiscal year
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Fundamental>, Fixnum, Hash)>] Array<Fundamental> data, response status code and response headers
    def lookup_company_fundamental_with_http_info(identifier, statement_code, fiscal_period, fiscal_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.lookup_company_fundamental ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling CompanyApi.lookup_company_fundamental"
      end
      # verify the required parameter 'statement_code' is set
      if @api_client.config.client_side_validation && statement_code.nil?
        fail ArgumentError, "Missing the required parameter 'statement_code' when calling CompanyApi.lookup_company_fundamental"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['income_statement', 'balance_sheet_statement', 'cash_flow_statement', 'calculations'].include?(statement_code)
        fail ArgumentError, "invalid value for 'statement_code', must be one of income_statement, balance_sheet_statement, cash_flow_statement, calculations"
      end
      # verify the required parameter 'fiscal_period' is set
      if @api_client.config.client_side_validation && fiscal_period.nil?
        fail ArgumentError, "Missing the required parameter 'fiscal_period' when calling CompanyApi.lookup_company_fundamental"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Q1TTM', 'Q2TTM', 'Q3TTM', 'FY', 'Q1', 'Q2', 'Q3', 'Q4', 'Q2YTD', 'Q3YTD'].include?(fiscal_period)
        fail ArgumentError, "invalid value for 'fiscal_period', must be one of Q1TTM, Q2TTM, Q3TTM, FY, Q1, Q2, Q3, Q4, Q2YTD, Q3YTD"
      end
      # verify the required parameter 'fiscal_year' is set
      if @api_client.config.client_side_validation && fiscal_year.nil?
        fail ArgumentError, "Missing the required parameter 'fiscal_year' when calling CompanyApi.lookup_company_fundamental"
      end
      # resource path
      local_var_path = "/companies/{identifier}/fundamentals/lookup/{statement_code}/{fiscal_year}/{fiscal_period}".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'statement_code' + '}', statement_code.to_s).sub('{' + 'fiscal_period' + '}', fiscal_period.to_s).sub('{' + 'fiscal_year' + '}', fiscal_year.to_s)

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
        :return_type => 'Array<Fundamental>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#lookup_company_fundamental\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Companies
    # Searches for Companies matching the text `query`
    # @param query Search parameters
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<CompanySummary>]
    def search_companies(query, opts = {})
      data, _status_code, _headers = search_companies_with_http_info(query, opts)
      return data
    end

    # Search Companies
    # Searches for Companies matching the text &#x60;query&#x60;
    # @param query Search parameters
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_page Gets the next page of data from a previous API call
    # @return [Array<(Array<CompanySummary>, Fixnum, Hash)>] Array<CompanySummary> data, response status code and response headers
    def search_companies_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyApi.search_companies ..."
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling CompanyApi.search_companies"
      end
      # resource path
      local_var_path = "/companies/search"

      # query parameters
      query_params = {}
      query_params[:'query'] = query
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
        :return_type => 'Array<CompanySummary>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#search_companies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
