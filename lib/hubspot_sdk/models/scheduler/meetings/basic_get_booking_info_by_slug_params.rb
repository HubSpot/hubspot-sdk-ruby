# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubSpotSDK::Resources::Scheduler::Meetings::Basic#get_booking_info_by_slug
        class BasicGetBookingInfoBySlugParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute slug
          #
          #   @return [String]
          required :slug, String

          # @!attribute timezone
          #
          #   @return [String]
          required :timezone, String

          # @!method initialize(slug:, timezone:, request_options: {})
          #   @param slug [String]
          #   @param timezone [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
