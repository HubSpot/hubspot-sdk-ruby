# frozen_string_literal: true

module HubspotSDK
  module Resources
    class BusinessUnits
      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::BusinessUnits::BusinessUnitGetByUserIDParams} for more
      # details.
      #
      # Get Business Units identified by `userId`. The `userId` refers to the user’s ID.
      #
      # @overload get_by_user_id(user_id, name: nil, properties: nil, request_options: {})
      #
      # @param user_id [String] Identifier of user to retrieve.
      #
      # @param name [Array<String>] The names of Business Units to retrieve. If empty or not provided, then all asso
      #
      # @param properties [Array<String>] The names of properties to optionally include in the response body. The only val
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging]
      #
      # @see HubspotSDK::Models::BusinessUnits::BusinessUnitGetByUserIDParams
      def get_by_user_id(user_id, params = {})
        parsed, options = HubspotSDK::BusinessUnits::BusinessUnitGetByUserIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["business-units/v3/business-units/user/%1$s", user_id],
          query: parsed,
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
