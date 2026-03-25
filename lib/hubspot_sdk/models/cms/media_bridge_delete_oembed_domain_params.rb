# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#delete_oembed_domain
      class MediaBridgeDeleteOembedDomainParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [String]
        required :app_id, String

        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute domain_portal_id
        #
        #   @return [Integer, nil]
        optional :domain_portal_id, Integer

        # @!method initialize(app_id:, id: nil, domain_portal_id: nil, request_options: {})
        #   @param app_id [String]
        #   @param id [Integer]
        #   @param domain_portal_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
