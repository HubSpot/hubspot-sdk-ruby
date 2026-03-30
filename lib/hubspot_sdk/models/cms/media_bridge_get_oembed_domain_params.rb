# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#get_oembed_domain
      class MediaBridgeGetOembedDomainParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute o_embed_domain_id
        #
        #   @return [String]
        required :o_embed_domain_id, String

        # @!method initialize(app_id:, o_embed_domain_id:, request_options: {})
        #   @param app_id [Integer]
        #   @param o_embed_domain_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
