# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Domains
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::DomainListParams} for more details.
        #
        # Returns all existing domains that have been created. Results can be limited and
        # filtered by creation or updated date.
        #
        # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param created_after [Time] Only return domains created after this date.
        #
        # @param created_at [Time] Only return domains created at this date.
        #
        # @param created_before [Time] Only return domains created before this date.
        #
        # @param limit [Integer] Maximum number of results per page.
        #
        # @param sort [Array<String>] Specifies the order in which the domains are returned.
        #
        # @param updated_after [Time] Only return domains updated after this date.
        #
        # @param updated_at [Time] Only return domains updated at this date.
        #
        # @param updated_before [Time] Only return domains updated before this date.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::Domain>]
        #
        # @see HubspotSDK::Models::Cms::DomainListParams
        def list(params = {})
          parsed, options = HubspotSDK::Cms::DomainListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "cms/v3/domains/",
            query: parsed.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Cms::Domain,
            options: options
          )
        end

        # Returns a single domains with the id specified.
        #
        # @overload get(domain_id, request_options: {})
        #
        # @param domain_id [String] The unique ID of the domain.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::Domain]
        #
        # @see HubspotSDK::Models::Cms::DomainGetParams
        def get(domain_id, params = {})
          @client.request(
            method: :get,
            path: ["cms/v3/domains/%1$s", domain_id],
            model: HubspotSDK::Cms::Domain,
            options: params[:request_options]
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
