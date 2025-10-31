# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Owners
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CRM::OwnerListParams} for more details.
        #
        # Retrieve a paginated list of owners available in the account.
        #
        # @overload list(after: nil, archived: nil, email: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param email [String] Filter by email address (optional).
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::CRM::PublicOwner>]
        #
        # @see HubspotSDK::Models::CRM::OwnerListParams
        def list(params = {})
          parsed, options = HubspotSDK::CRM::OwnerListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "crm/v3/owners/",
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::CRM::PublicOwner,
            options: options
          )
        end

        # Retrieve details of a specific owner using either their 'id' or 'userId'.
        #
        # @overload get(owner_id, archived: nil, id_property: nil, request_options: {})
        #
        # @param owner_id [Integer] The unique identifier of the owner to be retrieved.
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param id_property [Symbol, HubspotSDK::Models::CRM::OwnerGetParams::IDProperty] Specifies whether to use 'id' or 'userId' as the identifier for the owner.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CRM::PublicOwner]
        #
        # @see HubspotSDK::Models::CRM::OwnerGetParams
        def get(owner_id, params = {})
          parsed, options = HubspotSDK::CRM::OwnerGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["crm/v3/owners/%1$s", owner_id],
            query: parsed.transform_keys(id_property: "idProperty"),
            model: HubspotSDK::CRM::PublicOwner,
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
