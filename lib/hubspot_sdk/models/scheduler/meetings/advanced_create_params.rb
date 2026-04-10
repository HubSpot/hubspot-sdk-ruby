# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubSpotSDK::Resources::Scheduler::Meetings::Advanced#create
        class AdvancedCreateParams < HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute organizer_user_id
          #
          #   @return [String]
          required :organizer_user_id, String

          # @!method initialize(organizer_user_id:, request_options: {})
          #   @param organizer_user_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
