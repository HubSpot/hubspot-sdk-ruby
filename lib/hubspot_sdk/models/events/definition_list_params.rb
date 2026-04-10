# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      # @see HubSpotSDK::Resources::Events::Definitions#list
      class DefinitionListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute include_properties
        #
        #   @return [Boolean, nil]
        optional :include_properties, HubSpotSDK::Internal::Type::Boolean

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute search_string
        #
        #   @return [String, nil]
        optional :search_string, String

        # @!attribute sort_order
        #
        #   @return [String, nil]
        optional :sort_order, String

        # @!method initialize(after: nil, include_properties: nil, limit: nil, search_string: nil, sort_order: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Events::DefinitionListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param include_properties [Boolean]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param search_string [String]
        #
        #   @param sort_order [String]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
