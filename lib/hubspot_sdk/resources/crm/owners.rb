# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Owners
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Crm::OwnerListParams} for more details.
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Crm::PublicOwner>]
        #
        # @see HubSpotSDK::Models::Crm::OwnerListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Crm::OwnerListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm/owners/2026-03",
            query: query,
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Crm::PublicOwner,
            options: options
          )
        end

        # Retrieve details of a specific owner using either their 'id' or 'userId'.
        #
        # @overload get(owner_id, archived: nil, id_property: nil, request_options: {})
        #
        # @param owner_id [Integer]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param id_property [Symbol, HubSpotSDK::Models::Crm::OwnerGetParams::IDProperty]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::PublicOwner]
        #
        # @see HubSpotSDK::Models::Crm::OwnerGetParams
        def get(owner_id, params = {})
          parsed, options = HubSpotSDK::Crm::OwnerGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/owners/2026-03/%1$s", owner_id],
            query: query.transform_keys(id_property: "idProperty"),
            model: HubSpotSDK::Crm::PublicOwner,
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
