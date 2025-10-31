# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::SiteSearch#search
      class PublicSearchResults < HubspotSDK::Internal::Type::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute offset
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute page
        #
        #   @return [Integer]
        required :page, Integer

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::ContentSearchResult>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentSearchResult] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute search_term
        #
        #   @return [String, nil]
        optional :search_term, String, api_name: :searchTerm

        # @!method initialize(limit:, offset:, page:, results:, total:, search_term: nil)
        #   @param limit [Integer]
        #   @param offset [Integer]
        #   @param page [Integer]
        #   @param results [Array<HubspotSDK::Models::Cms::ContentSearchResult>]
        #   @param total [Integer]
        #   @param search_term [String]
      end
    end
  end
end
