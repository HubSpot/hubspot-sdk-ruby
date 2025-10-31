# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingAvailability < HubspotSDK::Internal::Type::BaseModel
        # @!attribute end_millis_utc
        #
        #   @return [Integer]
        required :end_millis_utc, Integer, api_name: :endMillisUtc

        # @!attribute start_millis_utc
        #
        #   @return [Integer]
        required :start_millis_utc, Integer, api_name: :startMillisUtc

        # @!method initialize(end_millis_utc:, start_millis_utc:)
        #   @param end_millis_utc [Integer]
        #   @param start_millis_utc [Integer]
      end
    end
  end
end
