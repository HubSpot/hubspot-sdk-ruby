# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Owners
        # Retrieve a paginated list of owners available in the account.
        #
        # @overload list(after: nil, archived: nil, email: nil, limit: nil, request_options: {})
        #
        # @param after [String]
        # @param archived [Boolean]
        # @param email [String]
        # @param limit [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::PublicOwner>]
        #
        # @see HubspotSDK::Models::Crm::OwnerListParams
        def list(params = {})
          parsed, options = HubspotSDK::Crm::OwnerListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "crm/v3/owners/",
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Crm::PublicOwner,
            options: options
          )
        end

        # Retrieve details of a specific owner using either their 'id' or 'userId'.
        #
        # @overload get(owner_id, archived: nil, id_property: nil, request_options: {})
        #
        # @param owner_id [Integer]
        # @param archived [Boolean]
        # @param id_property [Symbol, HubspotSDK::Models::Crm::OwnerGetParams::IDProperty]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicOwner]
        #
        # @see HubspotSDK::Models::Crm::OwnerGetParams
        def get(owner_id, params = {})
          parsed, options = HubspotSDK::Crm::OwnerGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["crm/v3/owners/%1$s", owner_id],
            query: parsed.transform_keys(id_property: "idProperty"),
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
