# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class SiteSearch
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SiteSearchGetIndexedDataParams} for more details.
        #
        # For a given account and document ID (page ID, blog post ID, HubDB row ID, etc.),
        # return all indexed data for that document. This is useful when debugging why a
        # particular document is not returned from a custom search.
        #
        # @overload get_indexed_data(content_id, type: nil, request_options: {})
        #
        # @param content_id [String] ID of the target document when searching for indexed properties.
        #
        # @param type [Symbol, HubspotSDK::Models::Cms::SiteSearchGetIndexedDataParams::Type] The type of document. Can be one of `SITE_PAGE`, `BLOG_POST`, or `KNOWLEDGE_ARTI
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::IndexedData]
        #
        # @see HubspotSDK::Models::Cms::SiteSearchGetIndexedDataParams
        def get_indexed_data(content_id, params = {})
          parsed, options = HubspotSDK::Cms::SiteSearchGetIndexedDataParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["cms/v3/site-search/indexed-data/%1$s", content_id],
            query: parsed,
            model: HubspotSDK::Cms::IndexedData,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SiteSearchSearchParams} for more details.
        #
        # Returns any website content matching the given search criteria for a given
        # HubSpot account. Searches can be filtered by content type, domain, or URL path.
        #
        # @overload search(autocomplete: nil, boost_limit: nil, boost_recent: nil, domain: nil, group_id: nil, hubdb_query: nil, language: nil, length: nil, limit: nil, match_prefix: nil, offset: nil, path_prefix: nil, popularity_boost: nil, property: nil, q: nil, table_id: nil, type: nil, request_options: {})
        #
        # @param autocomplete [Boolean] Specifies whether or not you are showing autocomplete results. Defaults to false
        #
        # @param boost_limit [Float] Specifies the maximum amount a result will be boosted based on its view count. D
        #
        # @param boost_recent [String] Specifies a relative time window where scores of documents published outside thi
        #
        # @param domain [Array<String>] A domain to match search results for. Multiple domains can be provided with &.
        #
        # @param group_id [Array<Integer>] Specifies which blog(s) to be searched by blog ID. Can be used multiple times to
        #
        # @param hubdb_query [String] Specify a HubDB query to further filter the search results.
        #
        # @param language [Symbol, HubspotSDK::Models::Cms::SiteSearchSearchParams::Language] Specifies the language of content to be searched. This value must be a valid [IS
        #
        # @param length [Symbol, HubspotSDK::Models::Cms::SiteSearchSearchParams::Length] Specifies the length of the search results. Can be set to `LONG` or `SHORT`. `SH
        #
        # @param limit [Integer] Specifies the number of results to be returned in a single response. Defaults to
        #
        # @param match_prefix [Boolean] Inverts the behavior of the pathPrefix filter when set to `false`. Defaults to `
        #
        # @param offset [Integer] Used to page through the results. If there are more results than specified by th
        #
        # @param path_prefix [Array<String>] Specifies a path prefix to filter search results. Will only return results with
        #
        # @param popularity_boost [Float] Specifies how strongly a result is boosted based on its view count. Defaults to
        #
        # @param property [Array<String>] Specifies which properties to include in the search. Options include `title`, `d
        #
        # @param q [String] The term to search for.
        #
        # @param table_id [Integer] Specifies a specific HubDB table to search. Only returns results from the specif
        #
        # @param type [Array<Symbol, HubspotSDK::Models::Cms::SiteSearchSearchParams::Type>] Specifies the type of content to search. Can be one or more of SITE_PAGE, LANDIN
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::PublicSearchResults]
        #
        # @see HubspotSDK::Models::Cms::SiteSearchSearchParams
        def search(params = {})
          parsed, options = HubspotSDK::Cms::SiteSearchSearchParams.dump_request(params)
          @client.request(
            method: :get,
            path: "cms/v3/site-search/search",
            query: parsed.transform_keys(
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
