# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::URLRedirects#update
      class URLRedirectUpdateParams < HubSpotSDK::Models::Cms::URLMapping
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute url_redirect_id
        #
        #   @return [String]
        required :url_redirect_id, String

        # @!method initialize(url_redirect_id:, request_options: {})
        #   @param url_redirect_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
