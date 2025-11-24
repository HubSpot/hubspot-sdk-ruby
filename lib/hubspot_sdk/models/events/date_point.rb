# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class DatePoint < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubspotSDK::Models::Events::DatePoint::TimeType]
        required :time_type, enum: -> { HubspotSDK::Events::DatePoint::TimeType }, api_name: :timeType

        # @!attribute timezone_source
        #
        #   @return [Symbol, HubspotSDK::Models::Events::DatePoint::TimezoneSource]
        required :timezone_source,
                 enum: -> { HubspotSDK::Events::DatePoint::TimezoneSource },
                 api_name: :timezoneSource

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

        # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param day [Integer]
        #   @param month [Integer]
        #   @param time_type [Symbol, HubspotSDK::Models::Events::DatePoint::TimeType]
        #   @param timezone_source [Symbol, HubspotSDK::Models::Events::DatePoint::TimezoneSource]
        #   @param year [Integer]
        #   @param zone_id [String]
        #   @param hour [Integer]
        #   @param millisecond [Integer]
        #   @param minute [Integer]
        #   @param second [Integer]

        # @see HubspotSDK::Models::Events::DatePoint#time_type
        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          DATE = :DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::DatePoint#timezone_source
        module TimezoneSource
          extend HubspotSDK::Internal::Type::Enum

          CUSTOM = :CUSTOM
          PORTAL = :PORTAL
          USER = :USER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
