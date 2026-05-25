# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      module Subscriptions
        # @see HubSpotSDK::Resources::WebhooksJournal::Subscriptions::Filters#create
        class FilterCreateParams < HubSpotSDK::Models::FilterCreateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
