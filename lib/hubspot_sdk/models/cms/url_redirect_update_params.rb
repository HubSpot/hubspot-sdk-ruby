# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::URLRedirects#update
      class URLRedirectUpdateParams < HubspotSDK::Models::Cms::URLMapping
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute url_redirect_id
        #
        #   @return [String]
        required :url_redirect_id, String

        # @!method initialize(url_redirect_id:, request_options: {})
        #   @param url_redirect_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
