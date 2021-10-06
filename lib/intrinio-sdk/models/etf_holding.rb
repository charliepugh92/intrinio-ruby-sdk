=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.26.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # The Exchange Traded Fund (ETF) holding data
  class ETFHolding
    # The date on which the holding and their weights correspond
    attr_accessor :as_of_date

    # The common name for the holding
    attr_accessor :name

    # The common exchange ticker for the holding
    attr_accessor :ticker

    # The type of instrument for this holding.  Examples (Bond = 'BOND', Equity = 'EQUI', Options = 'OPTN')
    attr_accessor :type

    # The OpenFIGI ticker for the holding
    attr_accessor :composite_figi

    # International Securities Identification Number (ISIN) for the holding
    attr_accessor :isin

    # Reuters Instrument Code (RIC) for the holding
    attr_accessor :ric

    # Stock Exchange Daily Official List (SEDOL) for the holding
    attr_accessor :sedol

    # Face value of the debt security, if available
    attr_accessor :face

    # Coupon rate of the debt security, if available
    attr_accessor :coupon

    # The market value of this holding in the ETF as of the `as_of_date`
    attr_accessor :market_value_held

    # Notional value of derivatives contracts held in the Exchange Traded Fund (ETF) or Exchange Traded Note (ETN)
    attr_accessor :notional_value

    # Maturity date for the debt security, if available
    attr_accessor :maturity

    # Number of units of the security held if available
    attr_accessor :quantity_held

    # Fraction of the funds market value held
    attr_accessor :weighting

    # The unit of the `quanity_held` field. Examples ('oz', 'shares', 'contracts')
    attr_accessor :quantity_units

    # Number of units of the security held per units of shares outstanding of the Exchange Traded Fund (ETF), if available
    attr_accessor :quantity_per_share

    # Expiry date for the futures contract held in the Exchange Traded Fund (ETF) or Exchange Traded Note (ETN)
    attr_accessor :contract_expiry_date


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'as_of_date' => :'as_of_date',
        :'name' => :'name',
        :'ticker' => :'ticker',
        :'type' => :'type',
        :'composite_figi' => :'composite_figi',
        :'isin' => :'isin',
        :'ric' => :'ric',
        :'sedol' => :'sedol',
        :'face' => :'face',
        :'coupon' => :'coupon',
        :'market_value_held' => :'market_value_held',
        :'notional_value' => :'notional_value',
        :'maturity' => :'maturity',
        :'quantity_held' => :'quantity_held',
        :'weighting' => :'weighting',
        :'quantity_units' => :'quantity_units',
        :'quantity_per_share' => :'quantity_per_share',
        :'contract_expiry_date' => :'contract_expiry_date'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'as_of_date' => :'Date',
        :'name' => :'String',
        :'ticker' => :'String',
        :'type' => :'String',
        :'composite_figi' => :'String',
        :'isin' => :'String',
        :'ric' => :'String',
        :'sedol' => :'String',
        :'face' => :'Float',
        :'coupon' => :'Float',
        :'market_value_held' => :'Float',
        :'notional_value' => :'Float',
        :'maturity' => :'Date',
        :'quantity_held' => :'Float',
        :'weighting' => :'Float',
        :'quantity_units' => :'Float',
        :'quantity_per_share' => :'Float',
        :'contract_expiry_date' => :'Date'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'as_of_date')
        self.as_of_date = attributes[:'as_of_date']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'ticker')
        self.ticker = attributes[:'ticker']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'composite_figi')
        self.composite_figi = attributes[:'composite_figi']
      end

      if attributes.has_key?(:'isin')
        self.isin = attributes[:'isin']
      end

      if attributes.has_key?(:'ric')
        self.ric = attributes[:'ric']
      end

      if attributes.has_key?(:'sedol')
        self.sedol = attributes[:'sedol']
      end

      if attributes.has_key?(:'face')
        self.face = attributes[:'face']
      end

      if attributes.has_key?(:'coupon')
        self.coupon = attributes[:'coupon']
      end

      if attributes.has_key?(:'market_value_held')
        self.market_value_held = attributes[:'market_value_held']
      end

      if attributes.has_key?(:'notional_value')
        self.notional_value = attributes[:'notional_value']
      end

      if attributes.has_key?(:'maturity')
        self.maturity = attributes[:'maturity']
      end

      if attributes.has_key?(:'quantity_held')
        self.quantity_held = attributes[:'quantity_held']
      end

      if attributes.has_key?(:'weighting')
        self.weighting = attributes[:'weighting']
      end

      if attributes.has_key?(:'quantity_units')
        self.quantity_units = attributes[:'quantity_units']
      end

      if attributes.has_key?(:'quantity_per_share')
        self.quantity_per_share = attributes[:'quantity_per_share']
      end

      if attributes.has_key?(:'contract_expiry_date')
        self.contract_expiry_date = attributes[:'contract_expiry_date']
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
          as_of_date == o.as_of_date &&
          name == o.name &&
          ticker == o.ticker &&
          type == o.type &&
          composite_figi == o.composite_figi &&
          isin == o.isin &&
          ric == o.ric &&
          sedol == o.sedol &&
          face == o.face &&
          coupon == o.coupon &&
          market_value_held == o.market_value_held &&
          notional_value == o.notional_value &&
          maturity == o.maturity &&
          quantity_held == o.quantity_held &&
          weighting == o.weighting &&
          quantity_units == o.quantity_units &&
          quantity_per_share == o.quantity_per_share &&
          contract_expiry_date == o.contract_expiry_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [as_of_date, name, ticker, type, composite_figi, isin, ric, sedol, face, coupon, market_value_held, notional_value, maturity, quantity_held, weighting, quantity_units, quantity_per_share, contract_expiry_date].hash
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
