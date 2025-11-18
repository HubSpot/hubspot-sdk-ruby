# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubspotSDK::Resources::Scheduler::Meetings::MeetingsLinks#get_booking_info_by_slug
        class MeetingsLinkGetBookingInfoBySlugParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute timezone
          #   Return times in response based on specified time zone.
          #
          #   @return [String]
          required :timezone, String

          # @!method initialize(timezone:, request_options: {})
          #   @param timezone [String] Return times in response based on specified time zone.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
