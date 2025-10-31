# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IntegratorOEmbedDomainRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute endpoints
        #
        #   @return [HubspotSDK::Models::Cms::Endpoints]
        required :endpoints, -> { HubspotSDK::Cms::Endpoints }

        # @!attribute portal_id
        #
        #   @return [Integer, nil]
        optional :portal_id, Integer, api_name: :portalId

        # @!method initialize(endpoints:, portal_id: nil)
        #   @param endpoints [HubspotSDK::Models::Cms::Endpoints]
        #   @param portal_id [Integer]
      end
    end
  end
end
