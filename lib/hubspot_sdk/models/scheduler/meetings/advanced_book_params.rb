# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubSpotSDK::Resources::Scheduler::Meetings::Advanced#book
        class AdvancedBookParams < HubSpotSDK::Models::Scheduler::ExternalMeetingBooking
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
