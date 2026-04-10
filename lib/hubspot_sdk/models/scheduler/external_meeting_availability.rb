# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalMeetingAvailability < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute end_millis_utc
        #   The end time of the meeting availability, represented as Unix time in
        #   milliseconds.
        #
        #   @return [Integer]
        required :end_millis_utc, Integer, api_name: :endMillisUtc

        # @!attribute start_millis_utc
        #   The start time of the meeting availability, represented as Unix time in
        #   milliseconds.
        #
        #   @return [Integer]
        required :start_millis_utc, Integer, api_name: :startMillisUtc

        # @!method initialize(end_millis_utc:, start_millis_utc:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Scheduler::ExternalMeetingAvailability} for more details.
        #
        #   @param end_millis_utc [Integer] The end time of the meeting availability, represented as Unix time in millisecon
        #
        #   @param start_millis_utc [Integer] The start time of the meeting availability, represented as Unix time in millisec
      end
    end
  end
end
