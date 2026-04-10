# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCalenderMeetingEventResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the meeting event.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time when the meeting event was initially created, in ISO 8601
        #   format.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute last_updated_at
        #   The date and time when the meeting event was last updated, in ISO 8601 format.
        #
        #   @return [Time]
        required :last_updated_at, Time, api_name: :lastUpdatedAt

        # @!attribute properties
        #
        #   @return [HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties]
        required :properties, -> { HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties }

        # @!method initialize(id:, created_at:, last_updated_at:, properties:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Scheduler::ExternalCalenderMeetingEventResponse} for more
        #   details.
        #
        #   @param id [String] The unique identifier for the meeting event.
        #
        #   @param created_at [Time] The date and time when the meeting event was initially created, in ISO 8601 form
        #
        #   @param last_updated_at [Time] The date and time when the meeting event was last updated, in ISO 8601 format.
        #
        #   @param properties [HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties]
      end
    end
  end
end
