# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCalenderMeetingEventResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute last_updated_at
        #
        #   @return [Time]
        required :last_updated_at, Time, api_name: :lastUpdatedAt

        # @!attribute properties
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties]
        required :properties, -> { HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties }

        # @!method initialize(id:, created_at:, last_updated_at:, properties:)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param last_updated_at [Time]
        #   @param properties [HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties]
      end
    end
  end
end
