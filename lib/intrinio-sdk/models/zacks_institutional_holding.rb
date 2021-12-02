=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.26.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # Returns a list of all ownership interests and the value of their interests sourced from Zacks.
  class ZacksInstitutionalHolding
    attr_accessor :company

    attr_accessor :owner

    # Quarter end date listed in the most recent 13F report filed by the institution
    attr_accessor :as_of_date

    # Number of shares of the stock listed
    attr_accessor :shares_held

    # Percent of shares outstanding held of the stock by the institution listed
    attr_accessor :shared_held_percent

    # Change in shares of the stock held by the institution listed
    attr_accessor :shares_change

    # Percentage change in shares of the stock held by the institution listed
    attr_accessor :shares_change_percent

    # Market value of shares outstanding held of the stock listed
    attr_accessor :market_value

    # Change in market value shares of the stock listed
    attr_accessor :market_value_change

    # The report type of the latest SEC filing
    attr_accessor :last_sec_filing_type

    # The date of the latest SEC filing
    attr_accessor :last_sec_filing_date

    # The
    attr_accessor :last_sec_filing_shares

    attr_accessor :historical_holdings


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'company' => :'company',
        :'owner' => :'owner',
        :'as_of_date' => :'as_of_date',
        :'shares_held' => :'shares_held',
        :'shared_held_percent' => :'shared_held_percent',
        :'shares_change' => :'shares_change',
        :'shares_change_percent' => :'shares_change_percent',
        :'market_value' => :'market_value',
        :'market_value_change' => :'market_value_change',
        :'last_sec_filing_type' => :'last_sec_filing_type',
        :'last_sec_filing_date' => :'last_sec_filing_date',
        :'last_sec_filing_shares' => :'last_sec_filing_shares',
        :'historical_holdings' => :'historical_holdings'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'company' => :'ZacksInstitutionalHoldingCompanySummary',
        :'owner' => :'ZacksInstitutionalHoldingOwnerSummary',
        :'as_of_date' => :'Date',
        :'shares_held' => :'Float',
        :'shared_held_percent' => :'Float',
        :'shares_change' => :'Float',
        :'shares_change_percent' => :'Float',
        :'market_value' => :'Float',
        :'market_value_change' => :'Float',
        :'last_sec_filing_type' => :'String',
        :'last_sec_filing_date' => :'Date',
        :'last_sec_filing_shares' => :'Float',
        :'historical_holdings' => :'Array<ZacksInstitutionalHoldingHistoricalSummary>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.has_key?(:'as_of_date')
        self.as_of_date = attributes[:'as_of_date']
      end

      if attributes.has_key?(:'shares_held')
        self.shares_held = attributes[:'shares_held']
      end

      if attributes.has_key?(:'shared_held_percent')
        self.shared_held_percent = attributes[:'shared_held_percent']
      end

      if attributes.has_key?(:'shares_change')
        self.shares_change = attributes[:'shares_change']
      end

      if attributes.has_key?(:'shares_change_percent')
        self.shares_change_percent = attributes[:'shares_change_percent']
      end

      if attributes.has_key?(:'market_value')
        self.market_value = attributes[:'market_value']
      end

      if attributes.has_key?(:'market_value_change')
        self.market_value_change = attributes[:'market_value_change']
      end

      if attributes.has_key?(:'last_sec_filing_type')
        self.last_sec_filing_type = attributes[:'last_sec_filing_type']
      end

      if attributes.has_key?(:'last_sec_filing_date')
        self.last_sec_filing_date = attributes[:'last_sec_filing_date']
      end

      if attributes.has_key?(:'last_sec_filing_shares')
        self.last_sec_filing_shares = attributes[:'last_sec_filing_shares']
      end

      if attributes.has_key?(:'historical_holdings')
        if (value = attributes[:'historical_holdings']).is_a?(Array)
          self.historical_holdings = value
        end
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
          company == o.company &&
          owner == o.owner &&
          as_of_date == o.as_of_date &&
          shares_held == o.shares_held &&
          shared_held_percent == o.shared_held_percent &&
          shares_change == o.shares_change &&
          shares_change_percent == o.shares_change_percent &&
          market_value == o.market_value &&
          market_value_change == o.market_value_change &&
          last_sec_filing_type == o.last_sec_filing_type &&
          last_sec_filing_date == o.last_sec_filing_date &&
          last_sec_filing_shares == o.last_sec_filing_shares &&
          historical_holdings == o.historical_holdings
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [company, owner, as_of_date, shares_held, shared_held_percent, shares_change, shares_change_percent, market_value, market_value_change, last_sec_filing_type, last_sec_filing_date, last_sec_filing_shares, historical_holdings].hash
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
