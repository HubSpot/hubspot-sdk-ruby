# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      # @see HubSpotSDK::Resources::WebhooksJournal::Subscriptions#delete_for_portal
      class SubscriptionDeleteForPortalParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer

        # @!method initialize(portal_id:, request_options: {})
        #   @param portal_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
