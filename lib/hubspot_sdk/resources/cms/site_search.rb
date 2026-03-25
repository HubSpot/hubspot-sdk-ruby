# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class SiteSearch
        # @overload get_indexed_data(content_id, type: nil, request_options: {})
        #
        # @param content_id [String]
        # @param type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::IndexedData]
        #
        # @see HubspotSDK::Models::Cms::SiteSearchGetIndexedDataParams
        def get_indexed_data(content_id, params = {})
          parsed, options = HubspotSDK::Cms::SiteSearchGetIndexedDataParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["cms/site-search/2026-03/indexed-data/%1$s", content_id],
            query: query,
            model: HubspotSDK::Cms::IndexedData,
            options: options
          )
        end

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
        # @param language [Symbol, HubspotSDK::Models::Cms::SiteSearchSearchParams::Language]
        #
        # @param length [Symbol, HubspotSDK::Models::Cms::SiteSearchSearchParams::Length]
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
        # @param types [Array<Symbol, HubspotSDK::Models::Cms::SiteSearchSearchParams::Type>]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::PublicSearchResults]
        #
        # @see HubspotSDK::Models::Cms::SiteSearchSearchParams
        def search(params = {})
          parsed, options = HubspotSDK::Cms::SiteSearchSearchParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
            model: HubspotSDK::Cms::PublicSearchResults,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
