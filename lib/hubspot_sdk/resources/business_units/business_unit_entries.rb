# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class BusinessUnits
      class BusinessUnitEntries
        # Retrieve the brands that a specific user can access.
        #
        # @overload get_by_user_id(user_id, name: nil, properties: nil, request_options: {})
        #
        # @param user_id [String]
        # @param name [Array<String>]
        # @param properties [Array<String>]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging]
        #
        # @see HubSpotSDK::Models::BusinessUnits::BusinessUnitEntryGetByUserIDParams
        def get_by_user_id(user_id, params = {})
          parsed, options = HubSpotSDK::BusinessUnits::BusinessUnitEntryGetByUserIDParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["business-units/public/2026-03/business-units/user/%1$s", user_id],
            query: query,
            model: HubSpotSDK::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging,
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
