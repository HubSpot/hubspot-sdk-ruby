# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      module Meetings
        # @see HubSpotSDK::Resources::Scheduler::Meetings::Basic#get_availability_by_slug
        class BasicGetAvailabilityBySlugParams < HubSpotSDK::Internal::Type::BaseModel
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

          # @!attribute month_offset
          #
          #   @return [Integer, nil]
          optional :month_offset, Integer

          # @!method initialize(slug:, timezone:, month_offset: nil, request_options: {})
          #   @param slug [String]
          #   @param timezone [String]
          #   @param month_offset [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
