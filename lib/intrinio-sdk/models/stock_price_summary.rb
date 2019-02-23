=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module Intrinio
  # The summary of a stock price for a security on a given date.
  class StockPriceSummary
    # The calendar date that the stock price represents. For non-daily stock prices, this represents the last day in the period (end of the week, month, quarter, year, etc)
    attr_accessor :date

    # If true, the stock price represents an unfinished period (be it day, week, quarter, month, or year), meaning that the close price is the latest price available, not the official close price for the period
    attr_accessor :intraperiod

    # The type of period that the stock price represents
    attr_accessor :frequency

    # The price at the beginning of the period
    attr_accessor :open

    # The highest price over the span of the period
    attr_accessor :high

    # The lowest price over the span of the period
    attr_accessor :low

    # The price at the end of the period
    attr_accessor :close

    # The number of shares exchanged during the period
    attr_accessor :volume

    # The price at the beginning of the period, adjusted for splits and dividends
    attr_accessor :adj_open

    # The highest price over the span of the period, adjusted for splits and dividends
    attr_accessor :adj_high

    # The lowest price over the span of the period, adjusted for splits and dividends
    attr_accessor :adj_low

    # The price at the end of the period, adjusted for splits and dividends
    attr_accessor :adj_close

    # The number of shares exchanged during the period, adjusted for splits and dividends
    attr_accessor :adj_volume

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date' => :'date',
        :'intraperiod' => :'intraperiod',
        :'frequency' => :'frequency',
        :'open' => :'open',
        :'high' => :'high',
        :'low' => :'low',
        :'close' => :'close',
        :'volume' => :'volume',
        :'adj_open' => :'adj_open',
        :'adj_high' => :'adj_high',
        :'adj_low' => :'adj_low',
        :'adj_close' => :'adj_close',
        :'adj_volume' => :'adj_volume'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date' => :'Date',
        :'intraperiod' => :'BOOLEAN',
        :'frequency' => :'String',
        :'open' => :'Float',
        :'high' => :'Float',
        :'low' => :'Float',
        :'close' => :'Float',
        :'volume' => :'Float',
        :'adj_open' => :'Float',
        :'adj_high' => :'Float',
        :'adj_low' => :'Float',
        :'adj_close' => :'Float',
        :'adj_volume' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'intraperiod')
        self.intraperiod = attributes[:'intraperiod']
      end

      if attributes.has_key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.has_key?(:'open')
        self.open = attributes[:'open']
      end

      if attributes.has_key?(:'high')
        self.high = attributes[:'high']
      end

      if attributes.has_key?(:'low')
        self.low = attributes[:'low']
      end

      if attributes.has_key?(:'close')
        self.close = attributes[:'close']
      end

      if attributes.has_key?(:'volume')
        self.volume = attributes[:'volume']
      end

      if attributes.has_key?(:'adj_open')
        self.adj_open = attributes[:'adj_open']
      end

      if attributes.has_key?(:'adj_high')
        self.adj_high = attributes[:'adj_high']
      end

      if attributes.has_key?(:'adj_low')
        self.adj_low = attributes[:'adj_low']
      end

      if attributes.has_key?(:'adj_close')
        self.adj_close = attributes[:'adj_close']
      end

      if attributes.has_key?(:'adj_volume')
        self.adj_volume = attributes[:'adj_volume']
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
      frequency_validator = EnumAttributeValidator.new('String', ["daily", "weekly", "monthly", "quarterly", "yearly"])
      return false unless frequency_validator.valid?(@frequency)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frequency Object to be assigned
    def frequency=(frequency)
      validator = EnumAttributeValidator.new('String', ["daily", "weekly", "monthly", "quarterly", "yearly"])
      unless validator.valid?(frequency)
        fail ArgumentError, "invalid value for 'frequency', must be one of #{validator.allowable_values}."
      end
      @frequency = frequency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date == o.date &&
          intraperiod == o.intraperiod &&
          frequency == o.frequency &&
          open == o.open &&
          high == o.high &&
          low == o.low &&
          close == o.close &&
          volume == o.volume &&
          adj_open == o.adj_open &&
          adj_high == o.adj_high &&
          adj_low == o.adj_low &&
          adj_close == o.adj_close &&
          adj_volume == o.adj_volume
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [date, intraperiod, frequency, open, high, low, close, volume, adj_open, adj_high, adj_low, adj_close, adj_volume].hash
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
