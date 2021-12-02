=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://docs.intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.26.6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module Intrinio
  # A record of a company's initial public offering (IPO). The act of \"going public\" is initiated by an IPO, at which point the company's stock trades on a major stock exchange (such as NYSE or NASDAQ)
  class CompanyInitialPublicOffering
    # The Intrinio ID for the IPO
    attr_accessor :id

    # The ticker under which the Company will be traded after the IPO takes place
    attr_accessor :ticker

    # The date of the IPO, when the stock first trades on a major exchange
    attr_accessor :date

    # The status of the IPO. Upcoming IPOs have not taken place yet but are expected to. Priced IPOs have taken place. Withdrawn IPOs were expected to take place, but were subsequently withdrawn and did not take place
    attr_accessor :status

    # The acronym of the stock exchange that the company is going to trade publicly on. Typically NYSE or NASDAQ
    attr_accessor :exchange

    # The total dollar amount of shares offered in the IPO. Typically this is share price * share count
    attr_accessor :offer_amount

    # The price per share at which the IPO was offered
    attr_accessor :share_price

    # The expected lowest price per share at which the IPO will be offered. Before an IPO is priced, companies typically provide a range of prices per share at which they expect to offer the IPO (typically available for upcoming IPOs)
    attr_accessor :share_price_lowest

    # The expected highest price per share at which the IPO will be offered. Before an IPO is priced, companies typically provide a range of prices per share at which they expect to offer the IPO (typically available for upcoming IPOs)
    attr_accessor :share_price_highest

    # The number of shares offered in the IPO
    attr_accessor :share_count

    # The expected lowest number of shares that will be offered in the IPO. Before an IPO is priced, companies typically provide a range of shares that they expect to offer in the IPO (typically available for upcoming IPOs)
    attr_accessor :share_count_lowest

    # The expected highest number of shares that will be offered in the IPO. Before an IPO is priced, companies typically provide a range of shares that they expect to offer in the IPO (typically available for upcoming IPOs)
    attr_accessor :share_count_highest

    # The URL to the company's announcement of the IPO
    attr_accessor :announcement_url

    # The IRL to the company's S-1, S-1/A, F-1, or F-1/A SEC filing, which is required to be filed before an IPO takes place.
    attr_accessor :sec_report_url

    # The opening price at the beginning of the first trading day (only available for priced IPOs)
    attr_accessor :open_price

    # The closing price at the end of the first trading day (only available for priced IPOs)
    attr_accessor :close_price

    # The volume at the end of the first trading day (only available for priced IPOs)
    attr_accessor :volume

    # The percentage change between the open price and the close price on the first trading day (only available for priced IPOs)
    attr_accessor :day_change

    # The percentage change between the open price on the first trading day and the close price approximately a week after the first trading day (only available for priced IPOs)
    attr_accessor :week_change

    # The percentage change between the open price on the first trading day and the close price approximately a month after the first trading day (only available for priced IPOs)
    attr_accessor :month_change

    # The Company that is going public via the IPO
    attr_accessor :company

    # The primary Security for the Company that is going public via the IPO
    attr_accessor :security

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
        :'id' => :'id',
        :'ticker' => :'ticker',
        :'date' => :'date',
        :'status' => :'status',
        :'exchange' => :'exchange',
        :'offer_amount' => :'offer_amount',
        :'share_price' => :'share_price',
        :'share_price_lowest' => :'share_price_lowest',
        :'share_price_highest' => :'share_price_highest',
        :'share_count' => :'share_count',
        :'share_count_lowest' => :'share_count_lowest',
        :'share_count_highest' => :'share_count_highest',
        :'announcement_url' => :'announcement_url',
        :'sec_report_url' => :'sec_report_url',
        :'open_price' => :'open_price',
        :'close_price' => :'close_price',
        :'volume' => :'volume',
        :'day_change' => :'day_change',
        :'week_change' => :'week_change',
        :'month_change' => :'month_change',
        :'company' => :'company',
        :'security' => :'security'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'ticker' => :'String',
        :'date' => :'DateTime',
        :'status' => :'String',
        :'exchange' => :'String',
        :'offer_amount' => :'Float',
        :'share_price' => :'Float',
        :'share_price_lowest' => :'Float',
        :'share_price_highest' => :'Float',
        :'share_count' => :'Float',
        :'share_count_lowest' => :'Float',
        :'share_count_highest' => :'Float',
        :'announcement_url' => :'String',
        :'sec_report_url' => :'String',
        :'open_price' => :'Float',
        :'close_price' => :'Float',
        :'volume' => :'Float',
        :'day_change' => :'Float',
        :'week_change' => :'Float',
        :'month_change' => :'Float',
        :'company' => :'CompanySummary',
        :'security' => :'SecuritySummary'
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

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'exchange')
        self.exchange = attributes[:'exchange']
      end

      if attributes.has_key?(:'offer_amount')
        self.offer_amount = attributes[:'offer_amount']
      end

      if attributes.has_key?(:'share_price')
        self.share_price = attributes[:'share_price']
      end

      if attributes.has_key?(:'share_price_lowest')
        self.share_price_lowest = attributes[:'share_price_lowest']
      end

      if attributes.has_key?(:'share_price_highest')
        self.share_price_highest = attributes[:'share_price_highest']
      end

      if attributes.has_key?(:'share_count')
        self.share_count = attributes[:'share_count']
      end

      if attributes.has_key?(:'share_count_lowest')
        self.share_count_lowest = attributes[:'share_count_lowest']
      end

      if attributes.has_key?(:'share_count_highest')
        self.share_count_highest = attributes[:'share_count_highest']
      end

      if attributes.has_key?(:'announcement_url')
        self.announcement_url = attributes[:'announcement_url']
      end

      if attributes.has_key?(:'sec_report_url')
        self.sec_report_url = attributes[:'sec_report_url']
      end

      if attributes.has_key?(:'open_price')
        self.open_price = attributes[:'open_price']
      end

      if attributes.has_key?(:'close_price')
        self.close_price = attributes[:'close_price']
      end

      if attributes.has_key?(:'volume')
        self.volume = attributes[:'volume']
      end

      if attributes.has_key?(:'day_change')
        self.day_change = attributes[:'day_change']
      end

      if attributes.has_key?(:'week_change')
        self.week_change = attributes[:'week_change']
      end

      if attributes.has_key?(:'month_change')
        self.month_change = attributes[:'month_change']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'security')
        self.security = attributes[:'security']
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
      status_validator = EnumAttributeValidator.new('String', ["upcoming", "priced", "withdrawn"])
      return false unless status_validator.valid?(@status)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["upcoming", "priced", "withdrawn"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          ticker == o.ticker &&
          date == o.date &&
          status == o.status &&
          exchange == o.exchange &&
          offer_amount == o.offer_amount &&
          share_price == o.share_price &&
          share_price_lowest == o.share_price_lowest &&
          share_price_highest == o.share_price_highest &&
          share_count == o.share_count &&
          share_count_lowest == o.share_count_lowest &&
          share_count_highest == o.share_count_highest &&
          announcement_url == o.announcement_url &&
          sec_report_url == o.sec_report_url &&
          open_price == o.open_price &&
          close_price == o.close_price &&
          volume == o.volume &&
          day_change == o.day_change &&
          week_change == o.week_change &&
          month_change == o.month_change &&
          company == o.company &&
          security == o.security
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, ticker, date, status, exchange, offer_amount, share_price, share_price_lowest, share_price_highest, share_count, share_count_lowest, share_count_highest, announcement_url, sec_report_url, open_price, close_price, volume, day_change, week_change, month_change, company, security].hash
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
