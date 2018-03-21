=begin
#Intrinio API

#Welcome to the Intrinio API! Through our Marketplace, we offer a wide selection of financial data feeds sourced by our own proprietary processes as well as from many data vendors. The primary application of the Intrinio API is for use in third-party applications and integrations or for end-users utilizing the Excel add-in and Google Sheets add-on. The Intrinio API uses HTTPS verbs and a RESTful endpoint structure, which makes it easy to request data from Intrinio. Responses are delivered in JSON format. If you need additional help in using the API, go to our home page (https://intrinio.com) and click on the chat icon in the lower right corner.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module Intrinio
  # The summary of a filing submitted to the SEC by a company
  class FilingSummary
    # The Intrinio ID of the Filing
    attr_accessor :id

    # The date when the filing was submitted to the SEC by the company
    attr_accessor :filing_date

    # The date and time when the filing was accepted by SEC
    attr_accessor :accepted_date

    # The ending date of the fiscal period for the filing
    attr_accessor :period_end_date

    # The filing report type
    attr_accessor :report_type

    # A unique identifier for the filing provided by the SEC
    attr_accessor :sec_unique_id

    # The URL to the filing page on the SEC site
    attr_accessor :filing_url

    # The URL to the actual report on the SEC site
    attr_accessor :report_url

    # The URL for the XBRL filing for the report
    attr_accessor :instance_url


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'filing_date' => :'filing_date',
        :'accepted_date' => :'accepted_date',
        :'period_end_date' => :'period_end_date',
        :'report_type' => :'report_type',
        :'sec_unique_id' => :'sec_unique_id',
        :'filing_url' => :'filing_url',
        :'report_url' => :'report_url',
        :'instance_url' => :'instance_url'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'filing_date' => :'Date',
        :'accepted_date' => :'String',
        :'period_end_date' => :'Date',
        :'report_type' => :'String',
        :'sec_unique_id' => :'String',
        :'filing_url' => :'String',
        :'report_url' => :'String',
        :'instance_url' => :'String'
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

      if attributes.has_key?(:'filing_date')
        self.filing_date = attributes[:'filing_date']
      end

      if attributes.has_key?(:'accepted_date')
        self.accepted_date = attributes[:'accepted_date']
      end

      if attributes.has_key?(:'period_end_date')
        self.period_end_date = attributes[:'period_end_date']
      end

      if attributes.has_key?(:'report_type')
        self.report_type = attributes[:'report_type']
      end

      if attributes.has_key?(:'sec_unique_id')
        self.sec_unique_id = attributes[:'sec_unique_id']
      end

      if attributes.has_key?(:'filing_url')
        self.filing_url = attributes[:'filing_url']
      end

      if attributes.has_key?(:'report_url')
        self.report_url = attributes[:'report_url']
      end

      if attributes.has_key?(:'instance_url')
        self.instance_url = attributes[:'instance_url']
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
          filing_date == o.filing_date &&
          accepted_date == o.accepted_date &&
          period_end_date == o.period_end_date &&
          report_type == o.report_type &&
          sec_unique_id == o.sec_unique_id &&
          filing_url == o.filing_url &&
          report_url == o.report_url &&
          instance_url == o.instance_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, filing_date, accepted_date, period_end_date, report_type, sec_unique_id, filing_url, report_url, instance_url].hash
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
