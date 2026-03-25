# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicDatePoint < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day
        #   The day component of the date.
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute month
        #   The month component of the date.
        #
        #   @return [Integer]
        required :month, Integer

        # @!attribute time_type
        #   Specifies the type of time (DATE).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicDatePoint::TimeType]
        required :time_type, enum: -> { HubspotSDK::Crm::PublicDatePoint::TimeType }, api_name: :timeType

        # @!attribute year
        #   The year component of the date.
        #
        #   @return [Integer]
        required :year, Integer

        # @!attribute zone_id
        #   The identifier for the time zone.
        #
        #   @return [String]
        required :zone_id, String, api_name: :zoneId

        # @!attribute hour
        #   The hour component of the time.
        #
        #   @return [Integer, nil]
        optional :hour, Integer

        # @!attribute millisecond
        #   The millisecond component of the time.
        #
        #   @return [Integer, nil]
        optional :millisecond, Integer

        # @!attribute minute
        #   The minute component of the time.
        #
        #   @return [Integer, nil]
        optional :minute, Integer

        # @!attribute second
        #   The second component of the time.
        #
        #   @return [Integer, nil]
        optional :second, Integer

        # @!attribute timezone_source
        #   The source of the time zone information.
        #
        #   @return [String, nil]
        optional :timezone_source, String, api_name: :timezoneSource

        # @!method initialize(day:, month:, time_type:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil, timezone_source: nil)
        #   @param day [Integer] The day component of the date.
        #
        #   @param month [Integer] The month component of the date.
        #
        #   @param time_type [Symbol, HubspotSDK::Models::Crm::PublicDatePoint::TimeType] Specifies the type of time (DATE).
        #
        #   @param year [Integer] The year component of the date.
        #
        #   @param zone_id [String] The identifier for the time zone.
        #
        #   @param hour [Integer] The hour component of the time.
        #
        #   @param millisecond [Integer] The millisecond component of the time.
        #
        #   @param minute [Integer] The minute component of the time.
        #
        #   @param second [Integer] The second component of the time.
        #
        #   @param timezone_source [String] The source of the time zone information.

        # Specifies the type of time (DATE).
        #
        # @see HubspotSDK::Models::Crm::PublicDatePoint#time_type
        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          DATE = :DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
