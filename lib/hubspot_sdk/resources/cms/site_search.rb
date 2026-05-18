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
