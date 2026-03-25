# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#search
      class ListSearchResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute has_more
        #   Whether or not there are more results to page through.
        #
        #   @return [Boolean]
        required :has_more, HubspotSDK::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute lists
        #   The lists that matched the search criteria.
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicObjectListSearchResult>]
        required :lists, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicObjectListSearchResult] }

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
        #   @param lists [Array<HubspotSDK::Models::Crm::PublicObjectListSearchResult>] The lists that matched the search criteria.
        #
        #   @param offset [Integer] Value to be passed in a future request to paginate through list search results.
        #
        #   @param total [Integer] The total number of lists that match the search criteria.
      end
    end
  end
end
