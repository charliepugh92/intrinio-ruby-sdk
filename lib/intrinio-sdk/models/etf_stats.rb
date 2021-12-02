=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.26.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # Daily stats for the Exchange Traded Fund (ETF) including net asset value, beta vs spy, returns, and volatility
  class ETFStats
    attr_accessor :date

    # The net asset value (NAV = Total Assets - Total Liabilities)
    attr_accessor :net_asset_value

    # Volatility this ETF is versus the SPY ETF
    attr_accessor :beta_vs_spy

    # Trailing one month return including dividends
    attr_accessor :trailing_one_month_return_split_and_dividend

    # Trailing one month return excluding dividends
    attr_accessor :trailing_one_month_return_split_only

    # Trailing one year return including dividends
    attr_accessor :trailing_one_year_return_split_and_dividend

    # Trailing one year return excluding dividends
    attr_accessor :trailing_one_year_return_split_only

    # Annualized standard deviation of daily price returns over trailing 252 trading days
    attr_accessor :trailing_one_year_volatility_annualized

    # Trailing three year return including dividends
    attr_accessor :trailing_three_year_annualized_return_split_and_dividend

    # Trailing three year return excluding dividends
    attr_accessor :trailing_three_year_annualized_return_split_only

    # Annualized standard deviation of daily price returns over trailing 756 trading days
    attr_accessor :trailing_three_year_volatility_annualized

    # Trailing five year return including dividends
    attr_accessor :trailing_five_year_annualized_return_split_and_dividend

    # Trailing five year return excluding dividends
    attr_accessor :trailing_five_year_annualized_return_split_only

    # Annualized standard  deviation  of  daily  price  returns  over  trailing 1260 trading days
    attr_accessor :trailing_five_year_volatility_annualized

    # Trailing ten year return including dividends
    attr_accessor :trailing_ten_year_annualized_return_split_and_dividend

    # Trailing ten year return excluding dividends
    attr_accessor :trailing_ten_year_annualized_return_split_only

    # Annualized return including dividends since inception
    attr_accessor :inception_annualized_return_split_and_dividend

    # Annualized return excluding dividends since inception
    attr_accessor :inception_annualized_return_split_only

    # Five years ago calendar year return including dividends
    attr_accessor :calendar_year_5_return_split_and_dividend

    # Five years ago calendar year return excluding dividends
    attr_accessor :calendar_year_5_return_split_only

    # Four years ago calendar year return including dividends
    attr_accessor :calendar_year_4_return_split_and_dividend

    # Four years ago calendar year return excluding dividends
    attr_accessor :calendar_year_4_return_split_only

    # Three years ago calendar year return including dividends
    attr_accessor :calendar_year_3_return_split_and_dividend

    # Three years ago calendar year return excluding dividends
    attr_accessor :calendar_year_3_return_split_only

    # Two years ago calendar year return including dividends
    attr_accessor :calendar_year_2_return_split_and_dividend

    # Two years ago calendar year return excluding dividends
    attr_accessor :calendar_year_2_return_split_only

    # One year ago calendar year return including dividends
    attr_accessor :calendar_year_1_return_split_and_dividend

    # One year ago calendar year return excluding dividends
    attr_accessor :calendar_year_1_return_split_only

    # Calendar year to date (YTD) return including dividends
    attr_accessor :calendar_year_to_date_return_split_and_dividend

    # Calendar year to date (YTD) return excluding dividends
    attr_accessor :calendar_year_to_date_return_split_only

    attr_accessor :etf


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date' => :'date',
        :'net_asset_value' => :'net_asset_value',
        :'beta_vs_spy' => :'beta_vs_spy',
        :'trailing_one_month_return_split_and_dividend' => :'trailing_one_month_return_split_and_dividend',
        :'trailing_one_month_return_split_only' => :'trailing_one_month_return_split_only',
        :'trailing_one_year_return_split_and_dividend' => :'trailing_one_year_return_split_and_dividend',
        :'trailing_one_year_return_split_only' => :'trailing_one_year_return_split_only',
        :'trailing_one_year_volatility_annualized' => :'trailing_one_year_volatility_annualized',
        :'trailing_three_year_annualized_return_split_and_dividend' => :'trailing_three_year_annualized_return_split_and_dividend',
        :'trailing_three_year_annualized_return_split_only' => :'trailing_three_year_annualized_return_split_only',
        :'trailing_three_year_volatility_annualized' => :'trailing_three_year_volatility_annualized',
        :'trailing_five_year_annualized_return_split_and_dividend' => :'trailing_five_year_annualized_return_split_and_dividend',
        :'trailing_five_year_annualized_return_split_only' => :'trailing_five_year_annualized_return_split_only',
        :'trailing_five_year_volatility_annualized' => :'trailing_five_year_volatility_annualized',
        :'trailing_ten_year_annualized_return_split_and_dividend' => :'trailing_ten_year_annualized_return_split_and_dividend',
        :'trailing_ten_year_annualized_return_split_only' => :'trailing_ten_year_annualized_return_split_only',
        :'inception_annualized_return_split_and_dividend' => :'inception_annualized_return_split_and_dividend',
        :'inception_annualized_return_split_only' => :'inception_annualized_return_split_only',
        :'calendar_year_5_return_split_and_dividend' => :'calendar_year_5_return_split_and_dividend',
        :'calendar_year_5_return_split_only' => :'calendar_year_5_return_split_only',
        :'calendar_year_4_return_split_and_dividend' => :'calendar_year_4_return_split_and_dividend',
        :'calendar_year_4_return_split_only' => :'calendar_year_4_return_split_only',
        :'calendar_year_3_return_split_and_dividend' => :'calendar_year_3_return_split_and_dividend',
        :'calendar_year_3_return_split_only' => :'calendar_year_3_return_split_only',
        :'calendar_year_2_return_split_and_dividend' => :'calendar_year_2_return_split_and_dividend',
        :'calendar_year_2_return_split_only' => :'calendar_year_2_return_split_only',
        :'calendar_year_1_return_split_and_dividend' => :'calendar_year_1_return_split_and_dividend',
        :'calendar_year_1_return_split_only' => :'calendar_year_1_return_split_only',
        :'calendar_year_to_date_return_split_and_dividend' => :'calendar_year_to_date_return_split_and_dividend',
        :'calendar_year_to_date_return_split_only' => :'calendar_year_to_date_return_split_only',
        :'etf' => :'etf'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date' => :'Date',
        :'net_asset_value' => :'Float',
        :'beta_vs_spy' => :'Float',
        :'trailing_one_month_return_split_and_dividend' => :'Float',
        :'trailing_one_month_return_split_only' => :'Float',
        :'trailing_one_year_return_split_and_dividend' => :'Float',
        :'trailing_one_year_return_split_only' => :'Float',
        :'trailing_one_year_volatility_annualized' => :'Float',
        :'trailing_three_year_annualized_return_split_and_dividend' => :'Float',
        :'trailing_three_year_annualized_return_split_only' => :'Float',
        :'trailing_three_year_volatility_annualized' => :'Float',
        :'trailing_five_year_annualized_return_split_and_dividend' => :'Float',
        :'trailing_five_year_annualized_return_split_only' => :'Float',
        :'trailing_five_year_volatility_annualized' => :'Float',
        :'trailing_ten_year_annualized_return_split_and_dividend' => :'Float',
        :'trailing_ten_year_annualized_return_split_only' => :'Float',
        :'inception_annualized_return_split_and_dividend' => :'Float',
        :'inception_annualized_return_split_only' => :'Float',
        :'calendar_year_5_return_split_and_dividend' => :'Float',
        :'calendar_year_5_return_split_only' => :'Float',
        :'calendar_year_4_return_split_and_dividend' => :'Float',
        :'calendar_year_4_return_split_only' => :'Float',
        :'calendar_year_3_return_split_and_dividend' => :'Float',
        :'calendar_year_3_return_split_only' => :'Float',
        :'calendar_year_2_return_split_and_dividend' => :'Float',
        :'calendar_year_2_return_split_only' => :'Float',
        :'calendar_year_1_return_split_and_dividend' => :'Float',
        :'calendar_year_1_return_split_only' => :'Float',
        :'calendar_year_to_date_return_split_and_dividend' => :'Float',
        :'calendar_year_to_date_return_split_only' => :'Float',
        :'etf' => :'ETFSummary'
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

      if attributes.has_key?(:'net_asset_value')
        self.net_asset_value = attributes[:'net_asset_value']
      end

      if attributes.has_key?(:'beta_vs_spy')
        self.beta_vs_spy = attributes[:'beta_vs_spy']
      end

      if attributes.has_key?(:'trailing_one_month_return_split_and_dividend')
        self.trailing_one_month_return_split_and_dividend = attributes[:'trailing_one_month_return_split_and_dividend']
      end

      if attributes.has_key?(:'trailing_one_month_return_split_only')
        self.trailing_one_month_return_split_only = attributes[:'trailing_one_month_return_split_only']
      end

      if attributes.has_key?(:'trailing_one_year_return_split_and_dividend')
        self.trailing_one_year_return_split_and_dividend = attributes[:'trailing_one_year_return_split_and_dividend']
      end

      if attributes.has_key?(:'trailing_one_year_return_split_only')
        self.trailing_one_year_return_split_only = attributes[:'trailing_one_year_return_split_only']
      end

      if attributes.has_key?(:'trailing_one_year_volatility_annualized')
        self.trailing_one_year_volatility_annualized = attributes[:'trailing_one_year_volatility_annualized']
      end

      if attributes.has_key?(:'trailing_three_year_annualized_return_split_and_dividend')
        self.trailing_three_year_annualized_return_split_and_dividend = attributes[:'trailing_three_year_annualized_return_split_and_dividend']
      end

      if attributes.has_key?(:'trailing_three_year_annualized_return_split_only')
        self.trailing_three_year_annualized_return_split_only = attributes[:'trailing_three_year_annualized_return_split_only']
      end

      if attributes.has_key?(:'trailing_three_year_volatility_annualized')
        self.trailing_three_year_volatility_annualized = attributes[:'trailing_three_year_volatility_annualized']
      end

      if attributes.has_key?(:'trailing_five_year_annualized_return_split_and_dividend')
        self.trailing_five_year_annualized_return_split_and_dividend = attributes[:'trailing_five_year_annualized_return_split_and_dividend']
      end

      if attributes.has_key?(:'trailing_five_year_annualized_return_split_only')
        self.trailing_five_year_annualized_return_split_only = attributes[:'trailing_five_year_annualized_return_split_only']
      end

      if attributes.has_key?(:'trailing_five_year_volatility_annualized')
        self.trailing_five_year_volatility_annualized = attributes[:'trailing_five_year_volatility_annualized']
      end

      if attributes.has_key?(:'trailing_ten_year_annualized_return_split_and_dividend')
        self.trailing_ten_year_annualized_return_split_and_dividend = attributes[:'trailing_ten_year_annualized_return_split_and_dividend']
      end

      if attributes.has_key?(:'trailing_ten_year_annualized_return_split_only')
        self.trailing_ten_year_annualized_return_split_only = attributes[:'trailing_ten_year_annualized_return_split_only']
      end

      if attributes.has_key?(:'inception_annualized_return_split_and_dividend')
        self.inception_annualized_return_split_and_dividend = attributes[:'inception_annualized_return_split_and_dividend']
      end

      if attributes.has_key?(:'inception_annualized_return_split_only')
        self.inception_annualized_return_split_only = attributes[:'inception_annualized_return_split_only']
      end

      if attributes.has_key?(:'calendar_year_5_return_split_and_dividend')
        self.calendar_year_5_return_split_and_dividend = attributes[:'calendar_year_5_return_split_and_dividend']
      end

      if attributes.has_key?(:'calendar_year_5_return_split_only')
        self.calendar_year_5_return_split_only = attributes[:'calendar_year_5_return_split_only']
      end

      if attributes.has_key?(:'calendar_year_4_return_split_and_dividend')
        self.calendar_year_4_return_split_and_dividend = attributes[:'calendar_year_4_return_split_and_dividend']
      end

      if attributes.has_key?(:'calendar_year_4_return_split_only')
        self.calendar_year_4_return_split_only = attributes[:'calendar_year_4_return_split_only']
      end

      if attributes.has_key?(:'calendar_year_3_return_split_and_dividend')
        self.calendar_year_3_return_split_and_dividend = attributes[:'calendar_year_3_return_split_and_dividend']
      end

      if attributes.has_key?(:'calendar_year_3_return_split_only')
        self.calendar_year_3_return_split_only = attributes[:'calendar_year_3_return_split_only']
      end

      if attributes.has_key?(:'calendar_year_2_return_split_and_dividend')
        self.calendar_year_2_return_split_and_dividend = attributes[:'calendar_year_2_return_split_and_dividend']
      end

      if attributes.has_key?(:'calendar_year_2_return_split_only')
        self.calendar_year_2_return_split_only = attributes[:'calendar_year_2_return_split_only']
      end

      if attributes.has_key?(:'calendar_year_1_return_split_and_dividend')
        self.calendar_year_1_return_split_and_dividend = attributes[:'calendar_year_1_return_split_and_dividend']
      end

      if attributes.has_key?(:'calendar_year_1_return_split_only')
        self.calendar_year_1_return_split_only = attributes[:'calendar_year_1_return_split_only']
      end

      if attributes.has_key?(:'calendar_year_to_date_return_split_and_dividend')
        self.calendar_year_to_date_return_split_and_dividend = attributes[:'calendar_year_to_date_return_split_and_dividend']
      end

      if attributes.has_key?(:'calendar_year_to_date_return_split_only')
        self.calendar_year_to_date_return_split_only = attributes[:'calendar_year_to_date_return_split_only']
      end

      if attributes.has_key?(:'etf')
        self.etf = attributes[:'etf']
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
          date == o.date &&
          net_asset_value == o.net_asset_value &&
          beta_vs_spy == o.beta_vs_spy &&
          trailing_one_month_return_split_and_dividend == o.trailing_one_month_return_split_and_dividend &&
          trailing_one_month_return_split_only == o.trailing_one_month_return_split_only &&
          trailing_one_year_return_split_and_dividend == o.trailing_one_year_return_split_and_dividend &&
          trailing_one_year_return_split_only == o.trailing_one_year_return_split_only &&
          trailing_one_year_volatility_annualized == o.trailing_one_year_volatility_annualized &&
          trailing_three_year_annualized_return_split_and_dividend == o.trailing_three_year_annualized_return_split_and_dividend &&
          trailing_three_year_annualized_return_split_only == o.trailing_three_year_annualized_return_split_only &&
          trailing_three_year_volatility_annualized == o.trailing_three_year_volatility_annualized &&
          trailing_five_year_annualized_return_split_and_dividend == o.trailing_five_year_annualized_return_split_and_dividend &&
          trailing_five_year_annualized_return_split_only == o.trailing_five_year_annualized_return_split_only &&
          trailing_five_year_volatility_annualized == o.trailing_five_year_volatility_annualized &&
          trailing_ten_year_annualized_return_split_and_dividend == o.trailing_ten_year_annualized_return_split_and_dividend &&
          trailing_ten_year_annualized_return_split_only == o.trailing_ten_year_annualized_return_split_only &&
          inception_annualized_return_split_and_dividend == o.inception_annualized_return_split_and_dividend &&
          inception_annualized_return_split_only == o.inception_annualized_return_split_only &&
          calendar_year_5_return_split_and_dividend == o.calendar_year_5_return_split_and_dividend &&
          calendar_year_5_return_split_only == o.calendar_year_5_return_split_only &&
          calendar_year_4_return_split_and_dividend == o.calendar_year_4_return_split_and_dividend &&
          calendar_year_4_return_split_only == o.calendar_year_4_return_split_only &&
          calendar_year_3_return_split_and_dividend == o.calendar_year_3_return_split_and_dividend &&
          calendar_year_3_return_split_only == o.calendar_year_3_return_split_only &&
          calendar_year_2_return_split_and_dividend == o.calendar_year_2_return_split_and_dividend &&
          calendar_year_2_return_split_only == o.calendar_year_2_return_split_only &&
          calendar_year_1_return_split_and_dividend == o.calendar_year_1_return_split_and_dividend &&
          calendar_year_1_return_split_only == o.calendar_year_1_return_split_only &&
          calendar_year_to_date_return_split_and_dividend == o.calendar_year_to_date_return_split_and_dividend &&
          calendar_year_to_date_return_split_only == o.calendar_year_to_date_return_split_only &&
          etf == o.etf
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [date, net_asset_value, beta_vs_spy, trailing_one_month_return_split_and_dividend, trailing_one_month_return_split_only, trailing_one_year_return_split_and_dividend, trailing_one_year_return_split_only, trailing_one_year_volatility_annualized, trailing_three_year_annualized_return_split_and_dividend, trailing_three_year_annualized_return_split_only, trailing_three_year_volatility_annualized, trailing_five_year_annualized_return_split_and_dividend, trailing_five_year_annualized_return_split_only, trailing_five_year_volatility_annualized, trailing_ten_year_annualized_return_split_and_dividend, trailing_ten_year_annualized_return_split_only, inception_annualized_return_split_and_dividend, inception_annualized_return_split_only, calendar_year_5_return_split_and_dividend, calendar_year_5_return_split_only, calendar_year_4_return_split_and_dividend, calendar_year_4_return_split_only, calendar_year_3_return_split_and_dividend, calendar_year_3_return_split_only, calendar_year_2_return_split_and_dividend, calendar_year_2_return_split_only, calendar_year_1_return_split_and_dividend, calendar_year_1_return_split_only, calendar_year_to_date_return_split_and_dividend, calendar_year_to_date_return_split_only, etf].hash
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
