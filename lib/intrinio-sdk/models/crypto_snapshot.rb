=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module Intrinio
  # A snapshot is a point in time look at the given Crypto Currency Pair on the given Crypto Currency Exchange. The snapshot includes information from the last 24 hours such as bid price, bid size, ask price, ask size, notional change in price, percent change in price, volume, open price, high price, low price, and details of the last trade (price, time, size, and side).
  class CryptoSnapshot
    # UTC timestamp of when the snapshot was last updated.
    attr_accessor :last_updated

    # The bid for the Crypto Currency Pair on the exchange.
    attr_accessor :bid

    # The size of the bid for the Crypto Currency Pair on the exchange.
    attr_accessor :bid_size

    # The ask for the Crypto Currency Pair on the exchange.
    attr_accessor :ask

    # The size of the ask for the Crypto Currency Pair on the exchange.
    attr_accessor :ask_size

    # The notional change in price over the last 24 hours.
    attr_accessor :change

    # The percent change in price over the last 24 hours.
    attr_accessor :change_percent

    # The volume of the Crypto Currency Pair on the exchange.
    attr_accessor :volume

    # The opening price of the currency on the exchange.
    attr_accessor :open

    # The highest price of the currency on the exchange for the last 24 hours.
    attr_accessor :high

    # The lowest price of the currency on the exchange for the last 24 hours.
    attr_accessor :low

    # The side of the last trade, either buy or sell.
    attr_accessor :last_trade_side

    # UTC timestamp of the last trade for the Crypto Currency Pair on the exchange.
    attr_accessor :last_trade_time

    # The price of the last trade for the Crypto Currency Pair on the exchange.
    attr_accessor :last_trade_price

    # The size of the last trade for the Crypto Currency Pair on the exchange.
    attr_accessor :last_trade_size


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'last_updated' => :'last_updated',
        :'bid' => :'bid',
        :'bid_size' => :'bid_size',
        :'ask' => :'ask',
        :'ask_size' => :'ask_size',
        :'change' => :'change',
        :'change_percent' => :'change_percent',
        :'volume' => :'volume',
        :'open' => :'open',
        :'high' => :'high',
        :'low' => :'low',
        :'last_trade_side' => :'last_trade_side',
        :'last_trade_time' => :'last_trade_time',
        :'last_trade_price' => :'last_trade_price',
        :'last_trade_size' => :'last_trade_size'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'last_updated' => :'String',
        :'bid' => :'Float',
        :'bid_size' => :'Float',
        :'ask' => :'Float',
        :'ask_size' => :'Float',
        :'change' => :'Float',
        :'change_percent' => :'Float',
        :'volume' => :'Float',
        :'open' => :'Float',
        :'high' => :'Float',
        :'low' => :'Float',
        :'last_trade_side' => :'String',
        :'last_trade_time' => :'String',
        :'last_trade_price' => :'Float',
        :'last_trade_size' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'last_updated')
        self.last_updated = attributes[:'last_updated']
      end

      if attributes.has_key?(:'bid')
        self.bid = attributes[:'bid']
      end

      if attributes.has_key?(:'bid_size')
        self.bid_size = attributes[:'bid_size']
      end

      if attributes.has_key?(:'ask')
        self.ask = attributes[:'ask']
      end

      if attributes.has_key?(:'ask_size')
        self.ask_size = attributes[:'ask_size']
      end

      if attributes.has_key?(:'change')
        self.change = attributes[:'change']
      end

      if attributes.has_key?(:'change_percent')
        self.change_percent = attributes[:'change_percent']
      end

      if attributes.has_key?(:'volume')
        self.volume = attributes[:'volume']
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

      if attributes.has_key?(:'last_trade_side')
        self.last_trade_side = attributes[:'last_trade_side']
      end

      if attributes.has_key?(:'last_trade_time')
        self.last_trade_time = attributes[:'last_trade_time']
      end

      if attributes.has_key?(:'last_trade_price')
        self.last_trade_price = attributes[:'last_trade_price']
      end

      if attributes.has_key?(:'last_trade_size')
        self.last_trade_size = attributes[:'last_trade_size']
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
          last_updated == o.last_updated &&
          bid == o.bid &&
          bid_size == o.bid_size &&
          ask == o.ask &&
          ask_size == o.ask_size &&
          change == o.change &&
          change_percent == o.change_percent &&
          volume == o.volume &&
          open == o.open &&
          high == o.high &&
          low == o.low &&
          last_trade_side == o.last_trade_side &&
          last_trade_time == o.last_trade_time &&
          last_trade_price == o.last_trade_price &&
          last_trade_size == o.last_trade_size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [last_updated, bid, bid_size, ask, ask_size, change, change_percent, volume, open, high, low, last_trade_side, last_trade_time, last_trade_price, last_trade_size].hash
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
