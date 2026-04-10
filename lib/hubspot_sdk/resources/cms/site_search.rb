# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class SiteSearch
        # Return all indexed data for an asset (e.g., page, blog post, HubDB table),
        # specified by ID. This is useful when debugging why a particular asset is not
        # returned from a custom search.
        #
        # @overload get_indexed_data(content_id, type: nil, request_options: {})
        #
        # @param content_id [String]
        # @param type [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::IndexedData]
        #
        # @see HubSpotSDK::Models::Cms::SiteSearchGetIndexedDataParams
        def get_indexed_data(content_id, params = {})
          parsed, options = HubSpotSDK::Cms::SiteSearchGetIndexedDataParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["cms/site-search/2026-03/indexed-data/%1$s", content_id],
            query: query,
            model: HubSpotSDK::Cms::IndexedData,
            options: options
          )
        end

        # Returns any website content matching the given search criteria for a given
        # HubSpot account. Searches can be filtered by content type, domain, or URL path.
        # Includes options for weighing results by recency and popularity, along with
        # language support.
        #
        # @overload search(analytics: nil, autocomplete: nil, boost_limit: nil, boost_recent: nil, domain: nil, group_id: nil, hubdb_query: nil, language: nil, length: nil, limit: nil, match_prefix: nil, offset: nil, path_prefix: nil, popularity_boost: nil, property: nil, q: nil, table_id: nil, type: nil, types: nil, request_options: {})
        #
        # @param analytics [Boolean]
        #
        # @param autocomplete [Boolean]
        #
        # @param boost_limit [Float]
        #
        # @param boost_recent [String]
        #
        # @param domain [Array<String>]
        #
        # @param group_id [Array<Integer>]
        #
        # @param hubdb_query [String]
        #
        # @param language [Symbol, HubSpotSDK::Models::Cms::SiteSearchSearchParams::Language]
        #
        # @param length [Symbol, HubSpotSDK::Models::Cms::SiteSearchSearchParams::Length]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param match_prefix [Boolean]
        #
        # @param offset [Integer]
        #
        # @param path_prefix [Array<String>]
        #
        # @param popularity_boost [Float]
        #
        # @param property [Array<String>]
        #
        # @param q [String]
        #
        # @param table_id [Integer]
        #
        # @param type [Array<String>]
        #
        # @param types [Array<Symbol, HubSpotSDK::Models::Cms::SiteSearchSearchParams::Type>]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::PublicSearchResults]
        #
        # @see HubSpotSDK::Models::Cms::SiteSearchSearchParams
        def search(params = {})
          parsed, options = HubSpotSDK::Cms::SiteSearchSearchParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/site-search/2026-03/search",
            query: query.transform_keys(
              boost_limit: "boostLimit",
              boost_recent: "boostRecent",
              group_id: "groupId",
              hubdb_query: "hubdbQuery",
              match_prefix: "matchPrefix",
              path_prefix: "pathPrefix",
              popularity_boost: "popularityBoost",
              table_id: "tableId"
            ),
            model: HubSpotSDK::Cms::PublicSearchResults,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
