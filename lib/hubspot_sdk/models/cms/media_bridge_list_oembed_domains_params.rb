# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#list_oembed_domains
      class MediaBridgeListOembedDomainsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [String]
        required :app_id, String

        # @!attribute domain_portal_id
        #
        #   @return [Integer, nil]
        optional :domain_portal_id, Integer

        # @!method initialize(app_id:, domain_portal_id: nil, request_options: {})
        #   @param app_id [String]
        #   @param domain_portal_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
