# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::TaxRates#list
      class TaxRateListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute active
        #
        #   @return [Boolean, nil]
        optional :active, HubSpotSDK::Internal::Type::Boolean

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(active: nil, after: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Settings::TaxRateListParams} for more details.
        #
        #   @param active [Boolean]
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
