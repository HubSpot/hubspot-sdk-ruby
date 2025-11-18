# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubspotSDK::Resources::Scheduler::Meetings::Calendar#create
        class CalendarCreateParams < HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute organizer_user_id
          #
          #   @return [String]
          required :organizer_user_id, String

          # @!method initialize(organizer_user_id:, request_options: {})
          #   @param organizer_user_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
