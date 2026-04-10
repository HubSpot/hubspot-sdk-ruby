# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#create_oembed_domain
      class MediaBridgeCreateOembedDomainParams < HubSpotSDK::Models::Cms::IntegratorOEmbedDomainRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!method initialize(app_id:, request_options: {})
        #   @param app_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
