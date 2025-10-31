# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicDatePoint < HubspotSDK::Internal::Type::BaseModel
      # @!attribute day
      #
      #   @return [Integer]
      required :day, Integer

      # @!attribute month
      #
      #   @return [Integer]
      required :month, Integer

      # @!attribute time_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicDatePoint::TimeType]
      required :time_type, enum: -> { HubspotSDK::PublicDatePoint::TimeType }, api_name: :timeType

      # @!attribute year
      #
      #   @return [Integer]
      required :year, Integer

      # @!attribute zone_id
      #
      #   @return [String]
      required :zone_id, String, api_name: :zoneId

      # @!attribute hour
      #
      #   @return [Integer, nil]
      optional :hour, Integer

      # @!attribute millisecond
      #
      #   @return [Integer, nil]
      optional :millisecond, Integer

      # @!attribute minute
      #
      #   @return [Integer, nil]
      optional :minute, Integer

      # @!attribute second
      #
      #   @return [Integer, nil]
      optional :second, Integer

      # @!attribute timezone_source
      #
      #   @return [String, nil]
      optional :timezone_source, String, api_name: :timezoneSource

      # @!method initialize(day:, month:, time_type:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil, timezone_source: nil)
      #   @param day [Integer]
      #   @param month [Integer]
      #   @param time_type [Symbol, HubspotSDK::Models::PublicDatePoint::TimeType]
      #   @param year [Integer]
      #   @param zone_id [String]
      #   @param hour [Integer]
      #   @param millisecond [Integer]
      #   @param minute [Integer]
      #   @param second [Integer]
      #   @param timezone_source [String]

      # @see HubspotSDK::Models::PublicDatePoint#time_type
      module TimeType
        extend HubspotSDK::Internal::Type::Enum

        DATE = :DATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
