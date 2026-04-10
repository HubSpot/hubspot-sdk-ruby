# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class IntegratorOEmbedDomainRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute endpoints
        #
        #   @return [HubSpotSDK::Models::Cms::Endpoints]
        required :endpoints, -> { HubSpotSDK::Cms::Endpoints }

        # @!attribute portal_id
        #
        #   @return [Integer, nil]
        optional :portal_id, Integer, api_name: :portalId

        # @!method initialize(endpoints:, portal_id: nil)
        #   @param endpoints [HubSpotSDK::Models::Cms::Endpoints]
        #   @param portal_id [Integer]
      end
    end
  end
end
