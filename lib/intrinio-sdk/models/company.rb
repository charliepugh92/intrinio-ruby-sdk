=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module Intrinio
  # A company that submits filings to the SEC and has a security traded primarily on a US exchange
  class Company
    # The Intrinio ID of the company
    attr_accessor :id

    # The stock market ticker symbol associated with the company's common stock securities
    attr_accessor :ticker

    # The company's common name
    attr_accessor :name

    # The Legal Entity Identifier (LEI) assigned to the company
    attr_accessor :lei

    # The company's official legal name
    attr_accessor :legal_name

    # The Stock Exchange where the company's common stock is primarily traded
    attr_accessor :stock_exchange

    # The Standard Industrial Classification (SIC) determined by the company and filed with the SEC
    attr_accessor :sic

    # A one or two sentence description of the company's operations
    attr_accessor :short_description

    # A one paragraph description of the company's operations and other corporate actions
    attr_accessor :long_description

    # The Chief Executive Officer of the company
    attr_accessor :ceo

    # The URL of the company's primary corporate website or primary internet property
    attr_accessor :company_url

    # The company's business address
    attr_accessor :business_address

    # The mailing address reported by the company
    attr_accessor :mailing_address

    # The phone number reported by the company
    attr_accessor :business_phone_no

    # The company's headquarters address - line 1
    attr_accessor :hq_address1

    # The company's headquarters address - line 2
    attr_accessor :hq_address2

    # The company's headquarters city
    attr_accessor :hq_address_city

    # The company's headquarters postal code
    attr_accessor :hq_address_postal_code

    # The company's legal organization form
    attr_accessor :entity_legal_form

    # The Central Index Key (CIK) assigned to the company by the SEC as a unique identifier, used in SEC filings
    attr_accessor :cik

    # The date of the company's last filing with the SEC
    attr_accessor :latest_filing_date

    # The state (US & Canada Only) where the company headquarters are located
    attr_accessor :hq_state

    # The country where the company headquarters are located
    attr_accessor :hq_country

    # The state (US & Canada Only) where the company is incorporated
    attr_accessor :inc_state

    # The country where the company is incorporated
    attr_accessor :inc_country

    # The number of employees working for the company
    attr_accessor :employees

    attr_accessor :entity_status

    # The company's operating sector
    attr_accessor :sector

    # The company's operating industry category
    attr_accessor :industry_category

    # The company's operating industry group
    attr_accessor :industry_group

    # The financial statement template used by Intrinio to standardize the as reported data
    attr_accessor :template

    # If true, the company has standardized and as reported fundamental data via the Intrinio API; if false, the company has as-reported data only
    attr_accessor :standardized_active

    # The period end date of the company's first reported fundamental
    attr_accessor :first_fundamental_date

    # The period end date of the company's last reported fundamental
    attr_accessor :last_fundamental_date

    # The date of the company's first stock price, based on the company's primary security, which is typically traded on US exchages
    attr_accessor :first_stock_price_date

    # The date of the company's last stock price, based on the company's primary security, which is typically traded on US exchages
    attr_accessor :last_stock_price_date


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'ticker' => :'ticker',
        :'name' => :'name',
        :'lei' => :'lei',
        :'legal_name' => :'legal_name',
        :'stock_exchange' => :'stock_exchange',
        :'sic' => :'sic',
        :'short_description' => :'short_description',
        :'long_description' => :'long_description',
        :'ceo' => :'ceo',
        :'company_url' => :'company_url',
        :'business_address' => :'business_address',
        :'mailing_address' => :'mailing_address',
        :'business_phone_no' => :'business_phone_no',
        :'hq_address1' => :'hq_address1',
        :'hq_address2' => :'hq_address2',
        :'hq_address_city' => :'hq_address_city',
        :'hq_address_postal_code' => :'hq_address_postal_code',
        :'entity_legal_form' => :'entity_legal_form',
        :'cik' => :'cik',
        :'latest_filing_date' => :'latest_filing_date',
        :'hq_state' => :'hq_state',
        :'hq_country' => :'hq_country',
        :'inc_state' => :'inc_state',
        :'inc_country' => :'inc_country',
        :'employees' => :'employees',
        :'entity_status' => :'entity_status',
        :'sector' => :'sector',
        :'industry_category' => :'industry_category',
        :'industry_group' => :'industry_group',
        :'template' => :'template',
        :'standardized_active' => :'standardized_active',
        :'first_fundamental_date' => :'first_fundamental_date',
        :'last_fundamental_date' => :'last_fundamental_date',
        :'first_stock_price_date' => :'first_stock_price_date',
        :'last_stock_price_date' => :'last_stock_price_date'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'ticker' => :'String',
        :'name' => :'String',
        :'lei' => :'String',
        :'legal_name' => :'String',
        :'stock_exchange' => :'String',
        :'sic' => :'String',
        :'short_description' => :'String',
        :'long_description' => :'String',
        :'ceo' => :'String',
        :'company_url' => :'String',
        :'business_address' => :'String',
        :'mailing_address' => :'String',
        :'business_phone_no' => :'String',
        :'hq_address1' => :'String',
        :'hq_address2' => :'String',
        :'hq_address_city' => :'String',
        :'hq_address_postal_code' => :'String',
        :'entity_legal_form' => :'String',
        :'cik' => :'String',
        :'latest_filing_date' => :'Date',
        :'hq_state' => :'String',
        :'hq_country' => :'String',
        :'inc_state' => :'String',
        :'inc_country' => :'String',
        :'employees' => :'Integer',
        :'entity_status' => :'String',
        :'sector' => :'String',
        :'industry_category' => :'String',
        :'industry_group' => :'String',
        :'template' => :'String',
        :'standardized_active' => :'BOOLEAN',
        :'first_fundamental_date' => :'Date',
        :'last_fundamental_date' => :'Date',
        :'first_stock_price_date' => :'Date',
        :'last_stock_price_date' => :'Date'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'lei')
        self.lei = attributes[:'lei']
      end

      if attributes.has_key?(:'legal_name')
        self.legal_name = attributes[:'legal_name']
      end

      if attributes.has_key?(:'stock_exchange')
        self.stock_exchange = attributes[:'stock_exchange']
      end

      if attributes.has_key?(:'sic')
        self.sic = attributes[:'sic']
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'long_description')
        self.long_description = attributes[:'long_description']
      end

      if attributes.has_key?(:'ceo')
        self.ceo = attributes[:'ceo']
      end

      if attributes.has_key?(:'company_url')
        self.company_url = attributes[:'company_url']
      end

      if attributes.has_key?(:'business_address')
        self.business_address = attributes[:'business_address']
      end

      if attributes.has_key?(:'mailing_address')
        self.mailing_address = attributes[:'mailing_address']
      end

      if attributes.has_key?(:'business_phone_no')
        self.business_phone_no = attributes[:'business_phone_no']
      end

      if attributes.has_key?(:'hq_address1')
        self.hq_address1 = attributes[:'hq_address1']
      end

      if attributes.has_key?(:'hq_address2')
        self.hq_address2 = attributes[:'hq_address2']
      end

      if attributes.has_key?(:'hq_address_city')
        self.hq_address_city = attributes[:'hq_address_city']
      end

      if attributes.has_key?(:'hq_address_postal_code')
        self.hq_address_postal_code = attributes[:'hq_address_postal_code']
      end

      if attributes.has_key?(:'entity_legal_form')
        self.entity_legal_form = attributes[:'entity_legal_form']
      end

      if attributes.has_key?(:'cik')
        self.cik = attributes[:'cik']
      end

      if attributes.has_key?(:'latest_filing_date')
        self.latest_filing_date = attributes[:'latest_filing_date']
      end

      if attributes.has_key?(:'hq_state')
        self.hq_state = attributes[:'hq_state']
      end

      if attributes.has_key?(:'hq_country')
        self.hq_country = attributes[:'hq_country']
      end

      if attributes.has_key?(:'inc_state')
        self.inc_state = attributes[:'inc_state']
      end

      if attributes.has_key?(:'inc_country')
        self.inc_country = attributes[:'inc_country']
      end

      if attributes.has_key?(:'employees')
        self.employees = attributes[:'employees']
      end

      if attributes.has_key?(:'entity_status')
        self.entity_status = attributes[:'entity_status']
      end

      if attributes.has_key?(:'sector')
        self.sector = attributes[:'sector']
      end

      if attributes.has_key?(:'industry_category')
        self.industry_category = attributes[:'industry_category']
      end

      if attributes.has_key?(:'industry_group')
        self.industry_group = attributes[:'industry_group']
      end

      if attributes.has_key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.has_key?(:'standardized_active')
        self.standardized_active = attributes[:'standardized_active']
      end

      if attributes.has_key?(:'first_fundamental_date')
        self.first_fundamental_date = attributes[:'first_fundamental_date']
      end

      if attributes.has_key?(:'last_fundamental_date')
        self.last_fundamental_date = attributes[:'last_fundamental_date']
      end

      if attributes.has_key?(:'first_stock_price_date')
        self.first_stock_price_date = attributes[:'first_stock_price_date']
      end

      if attributes.has_key?(:'last_stock_price_date')
        self.last_stock_price_date = attributes[:'last_stock_price_date']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          ticker == o.ticker &&
          name == o.name &&
          lei == o.lei &&
          legal_name == o.legal_name &&
          stock_exchange == o.stock_exchange &&
          sic == o.sic &&
          short_description == o.short_description &&
          long_description == o.long_description &&
          ceo == o.ceo &&
          company_url == o.company_url &&
          business_address == o.business_address &&
          mailing_address == o.mailing_address &&
          business_phone_no == o.business_phone_no &&
          hq_address1 == o.hq_address1 &&
          hq_address2 == o.hq_address2 &&
          hq_address_city == o.hq_address_city &&
          hq_address_postal_code == o.hq_address_postal_code &&
          entity_legal_form == o.entity_legal_form &&
          cik == o.cik &&
          latest_filing_date == o.latest_filing_date &&
          hq_state == o.hq_state &&
          hq_country == o.hq_country &&
          inc_state == o.inc_state &&
          inc_country == o.inc_country &&
          employees == o.employees &&
          entity_status == o.entity_status &&
          sector == o.sector &&
          industry_category == o.industry_category &&
          industry_group == o.industry_group &&
          template == o.template &&
          standardized_active == o.standardized_active &&
          first_fundamental_date == o.first_fundamental_date &&
          last_fundamental_date == o.last_fundamental_date &&
          first_stock_price_date == o.first_stock_price_date &&
          last_stock_price_date == o.last_stock_price_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, ticker, name, lei, legal_name, stock_exchange, sic, short_description, long_description, ceo, company_url, business_address, mailing_address, business_phone_no, hq_address1, hq_address2, hq_address_city, hq_address_postal_code, entity_legal_form, cik, latest_filing_date, hq_state, hq_country, inc_state, inc_country, employees, entity_status, sector, industry_category, industry_group, template, standardized_active, first_fundamental_date, last_fundamental_date, first_stock_price_date, last_stock_price_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Intrinio.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
