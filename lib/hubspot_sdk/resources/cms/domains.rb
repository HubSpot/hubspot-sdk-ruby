# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Domains
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::DomainListParams} for more details.
        #
        # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param created_after [Time]
        #
        # @param created_at [Time]
        #
        # @param created_before [Time]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param sort [Array<String>]
        #
        # @param updated_after [Time]
        #
        # @param updated_at [Time]
        #
        # @param updated_before [Time]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::Domain>]
        #
        # @see HubSpotSDK::Models::Cms::DomainListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Cms::DomainListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/domains/2026-03",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Cms::Domain,
            options: options
          )
        end

        # Returns a single domains with the id specified.
        #
        # @overload get(domain_id, request_options: {})
        #
        # @param domain_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::Domain]
        #
        # @see HubSpotSDK::Models::Cms::DomainGetParams
        def get(domain_id, params = {})
          @client.request(
            method: :get,
            path: ["cms/domains/2026-03/%1$s", domain_id],
            model: HubSpotSDK::Cms::Domain,
            options: params[:request_options]
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
