# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailabilityForDuration < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute availabilities
        #
        #   @return [Array<HubSpotSDK::Models::Scheduler::ExternalMeetingAvailability>]
        required :availabilities,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalMeetingAvailability] }

        # @!attribute meeting_duration_millis
        #   The duration of the meeting in milliseconds.
        #
        #   @return [Integer]
        required :meeting_duration_millis, Integer, api_name: :meetingDurationMillis

        # @!method initialize(availabilities:, meeting_duration_millis:)
        #   @param availabilities [Array<HubSpotSDK::Models::Scheduler::ExternalMeetingAvailability>]
        #
        #   @param meeting_duration_millis [Integer] The duration of the meeting in milliseconds.
      end
    end
  end
end
