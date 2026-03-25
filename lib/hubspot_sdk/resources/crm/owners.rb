# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Owners
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::OwnerListParams} for more details.
        #
        # @overload list(after: nil, archived: nil, email: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param email [String] Filter by email address (optional)
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::PublicOwner>]
        #
        # @see HubspotSDK::Models::Crm::OwnerListParams
        def list(params = {})
          parsed, options = HubspotSDK::Crm::OwnerListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm/owners/2026-03",
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Crm::PublicOwner,
            options: options
          )
        end

        # @overload get(owner_id, archived: nil, id_property: nil, request_options: {})
        #
        # @param owner_id [Integer]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param id_property [Symbol, HubspotSDK::Models::Crm::OwnerGetParams::IDProperty]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicOwner]
        #
        # @see HubspotSDK::Models::Crm::OwnerGetParams
        def get(owner_id, params = {})
          parsed, options = HubspotSDK::Crm::OwnerGetParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/owners/2026-03/%1$s", owner_id],
            query: query.transform_keys(id_property: "idProperty"),
            model: HubspotSDK::Crm::PublicOwner,
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
