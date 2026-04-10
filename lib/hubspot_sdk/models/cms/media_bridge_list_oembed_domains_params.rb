# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#list_oembed_domains
      class MediaBridgeListOembedDomainsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute domain_portal_id
        #
        #   @return [Integer, nil]
        optional :domain_portal_id, Integer

        # @!method initialize(app_id:, domain_portal_id: nil, request_options: {})
        #   @param app_id [Integer]
        #   @param domain_portal_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
