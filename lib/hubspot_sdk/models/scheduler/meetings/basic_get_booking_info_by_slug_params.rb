# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubspotSDK::Resources::Scheduler::Meetings::Basic#get_booking_info_by_slug
        class BasicGetBookingInfoBySlugParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
