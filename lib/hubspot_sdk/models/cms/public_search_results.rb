# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::SiteSearch#search
      class PublicSearchResults < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute limit
        #   The number of results returned in a single response.
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute offset
        #   The starting point for the next set of results in pagination.
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute page
        #   The current page number in the paginated results.
        #
        #   @return [Integer]
        required :page, Integer

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ContentSearchResult>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ContentSearchResult] }

        # @!attribute total
        #   The total number of results found for the search term.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute search_term
        #   The term used in the search query.
        #
        #   @return [String, nil]
        optional :search_term, String, api_name: :searchTerm

        # @!method initialize(limit:, offset:, page:, results:, total:, search_term: nil)
        #   @param limit [Integer] The number of results returned in a single response.
        #
        #   @param offset [Integer] The starting point for the next set of results in pagination.
        #
        #   @param page [Integer] The current page number in the paginated results.
        #
        #   @param results [Array<HubSpotSDK::Models::Cms::ContentSearchResult>]
        #
        #   @param total [Integer] The total number of results found for the search term.
        #
        #   @param search_term [String] The term used in the search query.
      end
    end
  end
end
