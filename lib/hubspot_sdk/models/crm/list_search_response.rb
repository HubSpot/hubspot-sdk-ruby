# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#list_by_search
      class ListSearchResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute has_more
        #   Whether or not there are more results to page through.
        #
        #   @return [Boolean]
        required :has_more, HubSpotSDK::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute lists
        #   The lists that matched the search criteria.
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicObjectListSearchResult>]
        required :lists, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicObjectListSearchResult] }

        # @!attribute offset
        #   Value to be passed in a future request to paginate through list search results.
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute total
        #   The total number of lists that match the search criteria.
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(has_more:, lists:, offset:, total:)
        #   @param has_more [Boolean] Whether or not there are more results to page through.
        #
        #   @param lists [Array<HubSpotSDK::Models::Crm::PublicObjectListSearchResult>] The lists that matched the search criteria.
        #
        #   @param offset [Integer] Value to be passed in a future request to paginate through list search results.
        #
        #   @param total [Integer] The total number of lists that match the search criteria.
      end
    end
  end
end
