# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailabilityForDuration < HubspotSDK::Internal::Type::BaseModel
        # @!attribute availabilities
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalMeetingAvailability>]
        required :availabilities,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalMeetingAvailability] }

        # @!attribute meeting_duration_millis
        #
        #   @return [Integer]
        required :meeting_duration_millis, Integer, api_name: :meetingDurationMillis

        # @!method initialize(availabilities:, meeting_duration_millis:)
        #   @param availabilities [Array<HubspotSDK::Models::Scheduler::ExternalMeetingAvailability>]
        #   @param meeting_duration_millis [Integer]
      end
    end
  end
end
