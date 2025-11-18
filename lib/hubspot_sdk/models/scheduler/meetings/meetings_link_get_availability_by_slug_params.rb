# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubspotSDK::Resources::Scheduler::Meetings::MeetingsLinks#get_availability_by_slug
        class MeetingsLinkGetAvailabilityBySlugParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute timezone
          #   Return times in response based on specified time zone.
          #
          #   @return [String]
          required :timezone, String

          # @!attribute month_offset
          #   Get times for a different month.
          #
          #   @return [Integer, nil]
          optional :month_offset, Integer

          # @!method initialize(timezone:, month_offset: nil, request_options: {})
          #   @param timezone [String] Return times in response based on specified time zone.
          #
          #   @param month_offset [Integer] Get times for a different month.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
