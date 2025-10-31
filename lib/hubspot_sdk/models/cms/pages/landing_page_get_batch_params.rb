# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Pages
        # @see HubspotSDK::Resources::Cms::Pages::LandingPages#get_batch
        class LandingPageGetBatchParams < HubspotSDK::Models::BatchInputString
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute archived
          #   Specifies whether to return deleted Landing Pages. Defaults to `false`.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(archived: nil, request_options: {})
          #   @param archived [Boolean] Specifies whether to return deleted Landing Pages. Defaults to `false`.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
