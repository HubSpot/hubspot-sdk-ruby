# frozen_string_literal: true

module HubspotSDK
  module Resources
    class BusinessUnits
      class BusinessUnits
        # @overload get_by_user_id(user_id, name: nil, properties: nil, request_options: {})
        #
        # @param user_id [String]
        # @param name [Array<String>]
        # @param properties [Array<String>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging]
        #
        # @see HubspotSDK::Models::BusinessUnits::BusinessUnitGetByUserIDParams
        def get_by_user_id(user_id, params = {})
          parsed, options = HubspotSDK::BusinessUnits::BusinessUnitGetByUserIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["business-units/public/2026-03/business-units/user/%1$s", user_id],
            query: query,
            model: HubspotSDK::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging,
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
